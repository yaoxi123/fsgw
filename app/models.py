from django.db import models

# Create your models here.
#首页大轮播图
class Bigwheel(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)
    class Meta:
        db_table = 'bigwheel'

#首页小轮播图今日特惠
class Smwheel(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)
    price =models.CharField(max_length=100)
    class Meta:
        db_table = 'smwheel'

class User(models.Model):
    tel = models.CharField(max_length=20, unique=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=40,null=True)
    password = models.CharField(max_length=256)
    class Meta:
        db_table = 'user'


# 商品模型类
class Goods(models.Model):
    # 货号（唯一）
    productid = models.CharField(max_length=10, unique=True)
    # 商品图片
    productimg = models.CharField(max_length=200)
    # 商品名称
    productname = models.CharField(max_length=100)
    # 价格
    price = models.FloatField()
    # 元网购积分
    jifen = models.IntegerField()
    # 月销售量
    productnum = models.IntegerField()
    # 评价
    pingjia = models.IntegerField()
    # 库存量
    storenums = models.IntegerField()
    # 品牌名称
    product = models.CharField(max_length=200)
    # 规格
    specifics = models.CharField(max_length=100, null=True)
    # 分类ID
    categoryid = models.CharField(max_length=10)
    # 商品详情
    dealer = models.CharField(max_length=256)

    class Meta:
        db_table = 'goods'

class Cart(models.Model):
    # 用户 [添加的这个商品属于哪个用户]
    user = models.ForeignKey(User)
    # [添加的是哪个商品]
    goods = models.ForeignKey(Goods)
    # 商品数量
    number = models.IntegerField()
    # 是否选中
    isselect = models.BooleanField(default=True)
    # 是否删除
    isdelete = models.BooleanField(default=False)
    class Meta:
        db_table = 'cart'


class Order(models.Model):
    # 用户
    user = models.ForeignKey(User)
    # 创建时间
    createtime = models.DateTimeField(auto_now_add=True)
    # 更新时间
    updatetime = models.DateTimeField(auto_now=True)
    # 状态# -1 过期# 0 未付款# 1 已付款，待发货# 2 已发货，待收货# 3 已收货，待评价# 4 已评价
    status = models.IntegerField(default=0)
    # 订单号
    identifier = models.CharField(max_length=256)

class OrderGoods(models.Model):
    # 订单
    order = models.ForeignKey(Order)
    # 商品
    goods = models.ForeignKey(Goods)
    ## 商品选择规格
    number = models.IntegerField()

