import hashlib
import random
import time
from urllib.parse import parse_qs


from django.http import JsonResponse
from django.shortcuts import render, redirect
from app.models import Bigwheel,Smwheel,User,Goods,Cart,Order,OrderGoods,Details
# Create your views here.
from django.core.cache import cache
from django.views.decorators.csrf import csrf_exempt


from app.alipay import alipay


def fstvgo(request):
    bigwheels =Bigwheel.objects.all()
    smwheels=Smwheel.objects.all()
    goods = Goods.objects.all()[0:4]
    token = request.session.get('token')
    userid = cache.get(token)
    response_dir = {
        'bigwheels': bigwheels,
        'smwheels':smwheels,
        'goods':goods,
    }
    # print(token)
    response_dir['user'] = None
    if token:
        # print('2333')
        user = User.objects.get(pk=userid)
        response_dir['user'] = user
    # print(response_dir['user'])
    return render(request,'fstvgo.html',context=response_dir)

def generate_password(param):
    md5 = hashlib.md5()
    md5.update(param.encode('utf-8'))
    return md5.hexdigest()

def generate_token():
    temp = str(time.time()) + str(random.random())
    md5 = hashlib.md5()
    md5.update(temp.encode('utf-8'))
    return md5.hexdigest()

def register(request):
    if request.method == 'GET':
        return render(request, 'registre.html')
    elif request.method == 'POST':
        tel = request.POST.get('tel')
        name = request.POST.get('name')
        email = request.POST.get('email')
        password = generate_password(request.POST.get('password'))

        user = User()
        user.tel = tel
        user.name = name
        user.email = email
        user.password = password
        user.save()

        token = generate_token()
        cache.set(token, user.id, 60 * 60 * 24 * 3)

        request.session['token'] = token
    return redirect('app:fstvgo')

def logout(request):
    request.session.flush()
    return redirect('app:fstvgo')

def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    elif request.method == 'POST':
        tel = request.POST.get('tel')
        password = request.POST.get('password')

        user = User.objects.filter(tel=tel)
        if user.exists():
            user = user.first()
            if user.password == generate_password(password):

                token = generate_token()   #更新token
                cache.set(token,user.id,60*60*24*3)  #状态保持
                #传递客户端
                request.session['token']=token
                return redirect('app:fstvgo')

            else:
                return render(request, 'login.html', context={'ps_err': '密码错误'})
        else:
            return render(request,'login.html',context={'tel_err':'手机号未注册,请注册后登录' })


def details(request,productid):
    goods =Goods.objects.filter(productid=productid)
    good = goods.first()
    details = Details.objects.filter(productid_id=productid)
    detail = details.first()
    token = request.session.get('token')
    userid = cache.get(token)
    response_dir = {
        'good':good,
        'detail':detail,
    }
    response_dir['user'] = None
    if token:

        user = User.objects.get(pk=userid)
        response_dir['user'] = user
    if userid:
        user = User.objects.get(pk=userid)
        carts = user.cart_set.all()
        response_dir['carts'] = carts
    return render(request, 'details.html', context=response_dir)

def cart(request):
    token = request.session.get('token')
    userid = cache.get(token)
    response_dir = {

    }
    response_dir['user'] = None
    if token:
        user = User.objects.get(pk=userid)
        response_dir['user'] = user
    if userid:  # 有登录才显示
        user = User.objects.get(pk=userid)
        carts = user.cart_set.filter(number__gt=0)
        response_dir['carts'] = carts

        isall = True
        for cart in carts:
            if not cart.isselect:
                isall = False
            response_dir['isall'] = isall
        return render(request, 'cart.html', context=response_dir)
    else:   # 未登录不显示
        return render(request, 'login.html')

def checketel(request):
    tel = request.GET.get('tel')
    users = User.objects.filter(tel=tel)
    if users.exists():  # 账号被占用  1可用， 0不可用
        response_data = {
            'status': 0,
            'msg': '手机号已被注册!'
        }
    else:   # 账号可用
        response_data = {
            'status':1,
            'msg': '账号可用!'
        }
    return JsonResponse(response_data)

def goodlist(request):
    goods = Goods.objects.all()
    token = request.session.get('token')
    userid = cache.get(token)
    response_dir = {
        'goods':goods,
    }
    response_dir['user'] = None
    if token:
        user = User.objects.get(pk=userid)
        response_dir['user'] = user
    return render(request,'goodlist.html',context=response_dir)

def addcart(request):
    token = request.session.get('token')
    response_data = {}
    if token:
        userid = cache.get(token)
        if userid:  # 已经登录
            user = User.objects.get(pk=userid)
            goodsid = request.GET.get('goodsid')
            num = int(request.GET.get('number1'))
            goods = Goods.objects.get(pk=goodsid)
            carts = Cart.objects.filter(user=user).filter(goods=goods)
            if carts.exists():
                cart = carts.first()
                cart.number = cart.number + num
                cart.save()
            else:
                cart = Cart()
                cart.user = user
                cart.goods = goods
                cart.number = num
                cart.save()

            response_data['status'] = 1
            #response_data['number'] = cart.number
            response_data['msg'] = '添加 {} 购物车成功: {}'.format(cart.goods.productname, cart.number)
            return JsonResponse(response_data)
    response_data['status'] = -1
    response_data['msg'] = '请登录后操作'
    return JsonResponse(response_data)

def pluscart(request):
    token = request.session.get('token')
    response_data = {}
    if token:
        userid = cache.get(token)
        if userid:
            user = User.objects.get(pk=userid)
            goodsid = request.GET.get('goodsid')
            goods = Goods.objects.get(pk=goodsid)
            carts = Cart.objects.filter(user=user).filter(goods=goods)
            #cartsnumber = request.GET.get("cartsnumber")
            if carts.exists():
                cart = carts.first()
                cart.number = cart.number + 1
                cart.save()


            response_data['status'] = 1
            response_data['number'] = cart.number
            response_data['msg'] = '添加 {} 购物车成功: {}'.format(cart.goods.productname, cart.number)
            return JsonResponse(response_data)

        response_data['status'] = -1
        response_data['msg'] = '请登录后操作'
        return JsonResponse(response_data)

def minuscart(request):
    token = request.session.get('token')
    response_data = {}
    if token:
        userid = cache.get(token)
        if userid:
            user = User.objects.get(pk=userid)
            goodsid = request.GET.get('goodsid')
            goods = Goods.objects.get(pk=goodsid)
            carts = Cart.objects.filter(user=user).filter(goods=goods)
            #cartsnumber = request.GET.get("cartsnumber")
            if carts.exists():
                cart = carts.first()
                if cart.number >1:
                    cart.number = cart.number - 1
                    cart.save()

            response_data['status'] = 1
            response_data['number'] = cart.number
            response_data['msg'] = '添加 {} 购物车成功: {}'.format(cart.goods.productname, cart.number)
            return JsonResponse(response_data)

        response_data['status'] = -1
        response_data['msg'] = '请登录后操作'
        return JsonResponse(response_data)

def quicklybuy(request):
    token = request.session.get('token')
    response_data = {}
    if token:
        userid = cache.get(token)
        if userid:  # 已经登录
            user = User.objects.get(pk=userid)
            goodsid = request.GET.get('goodsid')
            num = int(request.GET.get('number1'))
            goods = Goods.objects.get(pk=goodsid)
            carts = Cart.objects.filter(user=user).filter(goods=goods)
            if carts.exists():
                cart = carts.first()
                cart.number = cart.number + num
                cart.save()
            else:
                cart = Cart()
                cart.user = user
                cart.goods = goods
                cart.number = num
                cart.save()

            response_data['status'] = 1
            response_data['number'] = cart.number
            response_data['msg'] = '添加 {} 购物车成功: {}'.format(cart.goods.productname, cart.number)
            return JsonResponse(response_data)
    response_data['status'] = -1
    response_data['msg'] = '请登录后操作'
    return JsonResponse(response_data)

def generate_identifier():
    temp = str(time.time()) + str(random.randrange(1000,10000))
    return temp

def generateorder(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    order = Order()
    order.user = user
    order.identifier = generate_identifier()
    order.save()
    carts = user.cart_set.all()
    for cart in carts:
        orderGoods = OrderGoods()
        orderGoods.order = order
        orderGoods.goods = cart.goods
        orderGoods.number = cart.number
        orderGoods.save()
        cart.delete()  #购物车中移除
    return render(request, 'orderdetail.html', context={'order': order})
    #return JsonResponse(response_data)

def orderlist(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    orders = user.order_set.all()
    # status_list = ['未付款', '待发货', '待收货', '待评价', '已评价']
    return render(request, 'orderlist.html', context={'orders':orders})

def orderdetail(request, identifier):
    order = Order.objects.filter(identifier=identifier).first()
    return render(request, 'orderdetail.html', context={'order': order})


# def quicklybuy(request):
#     token = request.session.get('token')
#     response_data = {}
#     if token:
#         userid = cache.get(token)
#         if userid:  # 已经登录
#             user = User.objects.get(pk=userid)
#             goodsid = request.GET.get('goodsid')
#             num = int(request.GET.get('number1'))
#             goods = Goods.objects.get(pk=goodsid)
#             # print(num)
#             order = Order()
#             order.user = user
#             order.identifier = generate_identifier()
#             order.save()
#             ordergoods = OrderGoods()
#             ordergoods.number = num
#             ordergoods.goods = goods
#             ordergoods.order = order
#             ordergoods.save()
#             response_data['order'] = order
#             response_data['ordergoods'] = ordergoods
#             response_data['status'] = 1
#             return JsonResponse(response_data)
#     response_data['status'] = -1
#     return JsonResponse(response_data)
def returnurl(request):
    return redirect('app:fstvgo')

# 支付宝异步回调是post请求
@csrf_exempt
def appnotifyurl(request):
    if request.method == 'POST':
        # 获取到参数
        body_str = request.body.decode('utf-8')
        # 通过parse_qs函数
        post_data = parse_qs(body_str)
        # 转换为字典
        post_dic = {}
        for k,v in post_data.items():
            post_dic[k] = v[0]
        # 获取订单号
        out_trade_no = post_dic['out_trade_no']
        # 更新状态
        Order.objects.filter(identifier=out_trade_no).update(status=1)
    return JsonResponse({'msg':'success'})


def pay(request):
    orderid = request.GET.get('orderid')
    order = Order.objects.get(pk=orderid)
    sum = 0
    for orderGoods in order.ordergoods_set.all():
        sum += orderGoods.goods.price * orderGoods.number
    # 支付地址信息
    data = alipay.direct_pay(
        subject='支付', # 显示标题
        out_trade_no=order.identifier,    #订单号
        total_amount=str(sum),   # 支付金额
        return_url='http://127.0.0.1/app/returnurl/'
    )

    # 支付地址
    alipay_url = 'https://openapi.alipaydev.com/gateway.do?{data}'.format(data=data)

    response_data = {
        'msg': '调用支付接口',
        'alipayurl': alipay_url,
        'status': 1
    }
    return JsonResponse(response_data)

def removecart(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    carts = user.cart_set.all()
    response_data = {}
    for cart in carts:
        cart.delete()  # 购物车中移除
        response_data['status'] = 1
    return JsonResponse(response_data)

def changecartselect(request):
    cartid = request.GET.get('cartid')
    cart = Cart.objects.get(pk=cartid)
    cart.isselect = not cart.isselect
    #print(1111111)
    cart.save()
    response_data = {
        'msg': '状态修改成功',
        'status': 1,
        'isselect': cart.isselect
    }
    return JsonResponse(response_data)


def changecartall(request):
    isall = request.GET.get('isall')
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    carts = user.cart_set.all()
    if isall == 'true':
        isall = True
    else:
        isall = False
    for cart in carts:
        cart.isselect = isall
        cart.save()
    response_data = {
        'msg': '全选/取消全选 成功',
        'status': 1
    }
    return JsonResponse(response_data)

