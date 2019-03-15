import hashlib
import random
import time

from django.http import JsonResponse
from django.shortcuts import render, redirect
from app.models import Bigwheel,Smwheel,User,Goods
# Create your views here.
from django.core.cache import cache


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
    token = request.session.get('token')
    userid = cache.get(token)
    response_dir = {
        'good':good,
    }
    response_dir['user'] = None
    if token:

        user = User.objects.get(pk=userid)
        response_dir['user'] = user
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
    return render(request, 'cart.html', context=response_dir)


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

