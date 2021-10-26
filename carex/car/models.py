from django.db import models
from datetime import datetime
from django.utils import timezone
from django.contrib.auth.models import User
from django.conf import settings

# Create your models here.
class Brand(models.Model):
    name = models.CharField(max_length=100, verbose_name='نام')

    class Meta:
        verbose_name = 'برند'
        verbose_name_plural = 'برندها'

    def __str__(self):
        return self.name

class Country(models.Model):
    name = models.CharField(max_length=100, verbose_name='نام')

    class Meta:
        verbose_name = 'کشور'
        verbose_name_plural = 'کشورها'

    def __str__(self):
        return self.name


class Car(models.Model):
    BODYTYPE_CHOICES = (
        ('سدان', 'سدان'),
        ('هاچ بک', 'هاچ بک'),
        ('کوپه', 'کوپه'),
        ('وانت', 'وانت'),
        ('کراس اوور', 'کراس اوور')
    )
    GEARBOXTYPE_CHOICES = (
        ('دستی', 'دستی'),
        ('اتوماتیک', 'اتوماتیک')
    )
    STATUS_CHOICES = (
        ('موجود', 'موجود'),
        ('رزرو شده', 'رزرو شده')
    )
    name = models.CharField(max_length=100, verbose_name='نام')
    description = models.TextField(verbose_name='معرفی مختصر')
    brand = models.ForeignKey('Brand', verbose_name='برند', help_text='نام کارخانه سازنده', on_delete=models.SET_NULL, null=True, blank=True)
    bodyType = models.CharField(max_length=100, choices=BODYTYPE_CHOICES, verbose_name='نوع بدنه')
    country = models.ForeignKey('Country', verbose_name='کشور سازنده', on_delete=models.SET_NULL, null=True, blank=True)
    yearOfProduction = models.IntegerField(verbose_name='سال تولید', help_text='مثال: 2019')
    engineVolume = models.IntegerField(verbose_name='حجم موتور', help_text='حجم موتور برحسب سی سی')
    engineType = models.CharField(max_length=100, verbose_name='نوع موتور', help_text='به طور مثال: چهار سیلندر خطی')
    cylinderNum = models.IntegerField(verbose_name='تعداد سیلندرها')
    valveNum = models.IntegerField(verbose_name='تعداد سوپاپ ها')
    tankCapacity = models.IntegerField(verbose_name='ظرفیت باک ینزین', help_text='ظرفیت باک بنزین برحسب لیتر')
    maxPower = models.IntegerField(verbose_name='حداکثر توان خروجی', help_text='حداکثر توان خروجی برحسب اسب بخار')
    maxTorque = models.IntegerField(verbose_name='حداکثر گشتاور', help_text='حداکثر گشتاور برحسب دور بر دقیقه')
    gearboxType = models.CharField(max_length=100, choices=GEARBOXTYPE_CHOICES, verbose_name='نوع جعبه دنده')
    gearboxNum = models.IntegerField(verbose_name='تعداد دنده')
    breakType = models.CharField(max_length=100, verbose_name='نوع سیستم ترمز')
    maxSpeed = models.IntegerField(verbose_name='حداکثر سرعت', help_text='حداکثر سرعت برحسب کیلومتر بر ساعت')
    zeroTOHundredAcceleration = models.DecimalField(verbose_name='شتاب 0 تا 100', help_text='شتاب 0 تا 100 برحسب ثانیه', max_digits=4 ,decimal_places=1) 
    cityFuelUse = models.DecimalField(verbose_name='مصرف سوخت شهری', help_text='مصرف سوخت شهری برحسب لیتر در هر صد کیلومتر', max_digits=4 ,decimal_places=1)
    roadFuelUse = models.DecimalField(verbose_name='مصرف سوخت جاده ای', help_text='مصرف سوخت جاده ای برحسب لیتر در هر صد کیلومتر', max_digits=4 ,decimal_places=1)
    color = models.CharField(max_length=100, verbose_name='رنگ')
    options = models.TextField(verbose_name='امکانات رفاهی و آپشن ها')
    cost = models.BigIntegerField(verbose_name='قیمت', help_text='قیمت بر حسب تومان')
    status = models.CharField(max_length=100 ,verbose_name='وضعیت', choices=STATUS_CHOICES, default='a')
    mainImage = models.ImageField(upload_to='uploads/cars/', verbose_name='تصویر اصلی')
    image1 = models.ImageField(upload_to='uploads/cars/', verbose_name='تصویر 1', null=True, blank=True)
    image2 = models.ImageField(upload_to='uploads/cars/', verbose_name='تصویر 2', null=True, blank=True)
    image3 = models.ImageField(upload_to='uploads/cars/', verbose_name='تصویر 3', null=True, blank=True)
    image4 = models.ImageField(upload_to='uploads/cars/', verbose_name='تصویر 4', null=True, blank=True)
    viewsNum = models.IntegerField(verbose_name='تعداد بازدیدها', default=0)
    publishDate = models.DateField(auto_now_add=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta: 
        verbose_name = 'خودرو'
        verbose_name_plural = 'خودروها'

    def __str__(self):
        return self.name

    

class reservation (models.Model):
    car = models.ForeignKey('Car', on_delete = models.CASCADE, verbose_name = 'خودرو')
    customer = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete = models.CASCADE, verbose_name = 'مشتری')
    phone = models.BigIntegerField(verbose_name = 'شماره تماس')
    date = models.DateField(auto_now_add=True)

    class Meta:
        verbose_name = 'رزرو'
        verbose_name_plural = 'رزروها'

    def __str__(self):
        return self.car.name