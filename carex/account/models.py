from django.db import models
from django.conf import settings

# Create your models here.
class Profile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    date_of_birth = models.DateField(blank=True, null=True, verbose_name='تاریخ تولد')
    photo = models.ImageField(upload_to='users/%Y/%m/%d/', blank=True, verbose_name='تصویر پروفایل کاربری')

    class Meta:
        verbose_name = 'پروفایل'
        verbose_name_plural = 'پروفایل ها'

    def __str__(self):
        return 'Profile for user {}'.format(self.user.username)

    