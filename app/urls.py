from django.conf.urls import url

from app import views

urlpatterns = [
    url(r'^$', views.fstvgo, name='fstvgo'),  # 首页
    url(r'^registre/$', views.register, name='registre'),  # 注册
    url(r'^login/$', views.login, name='login'),  # 登录
    url(r'^details/$', views.details, name='details'),  # 商品详情
    url(r'^cart/$', views.cart, name='cart'),  # 购物车
]