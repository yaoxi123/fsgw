import hashlib
import random
import time

from django.shortcuts import render, redirect
from app.models import Bigwheel,Smwheel
# Create your views here.
from django_redis import cache


def fstvgo(request):
    bigwheels =Bigwheel.objects.all()
    smwheels=Smwheel.objects.all()
    response_dir = {
        'bigwheels': bigwheels,
        'smwheels':smwheels,
    }
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
    return render(request,'registre.html')

def login(request):
    return render(request,'login.html')

def details(request):
    return render(request,'details.html')

def cart(request):
    return render(request,'cart.html')