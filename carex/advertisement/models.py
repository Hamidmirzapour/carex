from django.db import models
from django.contrib.auth.models import User
from django.conf import settings

from datetime import datetime, date, timedelta


# Create your models here.
class City(models.Model):
    name = models.CharField(max_length=200, verbose_name='نام')

    class Meta:
        verbose_name='شهر'
        verbose_name_plural='شهرها'

    def __str__(self):
        return self.name

class user(models.Model):
    name = models.CharField(max_length=200, verbose_name='نام')

    class Meta:
        verbose_name='کاربر'
        verbose_name_plural='کاربر'

    def __str__(self):
        return self.name



CATEGORY_CHOICES = (
        ('سدان', 'سدان'),
        ('هاچ بک', 'هاچ بک'),
        ('کوپه', 'کوپه'),
        ('وانت', 'وانت'),
        ('کراس اوور', 'کراس اوور')
)

class Advertisement(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name ='مالک')
    category = models.CharField(max_length=50, choices=CATEGORY_CHOICES, verbose_name='دسته بندی')
    city = models.ForeignKey('City', on_delete=models.SET_NULL, null=True, blank=True, verbose_name='شهر')
    title = models.CharField(max_length=200, verbose_name='عنوان آگهی')
    description = models.TextField(verbose_name='متن آگهی')
    cost = models.CharField(verbose_name='قیمت', max_length=100, default='توافقی')
    published = models.BooleanField(default=False)
    engheza = models.IntegerField(verbose_name='مهلت آگهی', help_text='تعداد روز را وارد کنید', default=0)
    image1 = models.ImageField(upload_to='uploads/advertisementas/', verbose_name='تصویر 1', null=True, blank=True)
    image2 = models.ImageField(upload_to='uploads/advertisements/', verbose_name='تصویر 2', null=True, blank=True)
    image3 = models.ImageField(upload_to='uploads/advertisements/', verbose_name='تصویر 3', null=True, blank=True)
    image4 = models.ImageField(upload_to='uploads/advertisements/', verbose_name='تصویر 4', null=True, blank=True)
    viewsNum = models.IntegerField(verbose_name='تعداد بازدیدها', default=0)
    publishDate = models.DateField(auto_now_add=True, verbose_name= 'تاریخ انتشار')
    enghezaDate = models.DateField(verbose_name='تاریخ انقضا')
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = 'آگهی'
        verbose_name_plural = 'آگهی ها'

    def __str__(self):
        return self.title

    def enghezaDate(self):
        self.enghezaDate = date.today() + timedelta(days=self.engheza)
        return self.enghezaDate 