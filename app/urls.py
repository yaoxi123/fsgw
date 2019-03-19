from django.conf.urls import url

from app import views

urlpatterns = [
    url(r'^$', views.fstvgo, name='fstvgo'),  # 首页
    url(r'^registre/$', views.register, name='registre'),  # 注册
    url(r'^logout/$', views.logout, name='logout'),  #注销
    url(r'^login/$', views.login, name='login'),  # 登录
    url(r'^checketel/$', views.checketel, name='checketel'), # 手机号验证
    url(r'^details/(?P<productid>\d+)/$', views.details, name='details'),  # 商品详情
    url(r'^goodlist/$', views.goodlist, name='goodlist'),  # 商品列表
    url(r'^cart/$', views.cart, name='cart'),  # 购物车
    url(r'^addcart/$', views.addcart, name='addcart'),  # 添加到购物车
    url(r'^pluscart/$', views.pluscart, name='pluscart'),  # +号添加购物车
    url(r'^minuscart/$', views.minuscart, name='minuscart'),  # -号添加购物车
    url(r'^quicklybuy/$', views.quicklybuy, name='quicklybuy'),  # 快速购买
    url(r'^generateorder/$', views.generateorder, name='generateorder'),    # 生成订单
    url(r'orderlist/$', views.orderlist, name='orderlist'), # 订单列表
    url(r'^orderdetail/(?P<identifier>[\d.]+)/$', views.orderdetail, name='orderdetail'),  # 订单详情
    url(r'^returnurl/$', views.returnurl, name='returnurl'),    # 支付成功后，客户端的显示
    url(r'^appnotifyurl/$', views.appnotifyurl, name='appnotifyurl'), # 支付成功后，订单的处理
    url(r'^pay/$', views.pay, name='pay'),  # 支付
    url(r'^removecart/$', views.removecart, name='removecart'),  #清空购物车
    url(r'^changecartselect/$', views.changecartselect, name='changecartselect'),  # 购物车商品选中状态
    url(r'^changecartall/$', views.changecartall, name='changecartall'),  # 全选/取消全选

]