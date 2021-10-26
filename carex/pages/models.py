from django.db import models

# Create your models here.
class messages(models.Model):
    fullName = models.CharField(max_length=200, verbose_name='نام و نام خانوادگی') 
    email = models.EmailField(verbose_name='ایمیل')
    subject = models.CharField(max_length=200, verbose_name='موضوع')
    messageBody = models.TextField(verbose_name='متن پیام')
    dateTime = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'پیام'
        verbose_name_plural = 'پیام ها'


    def __str__(self):
        return {0}, {1}.format(self.fullName, self.subject)