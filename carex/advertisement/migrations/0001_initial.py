# Generated by Django 2.2.4 on 2019-08-20 06:06

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, verbose_name='نام')),
            ],
            options={
                'verbose_name': 'شهر',
                'verbose_name_plural': 'شهرها',
            },
        ),
        migrations.CreateModel(
            name='Advertisement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category', models.CharField(choices=[('سدان', 'سدان'), ('هاچ بک', 'هاچ بک'), ('کوپه', 'کوپه'), ('وانت', 'وانت'), ('کراس اوور', 'کراس اوور')], max_length=50, verbose_name='دسته بندی')),
                ('title', models.CharField(max_length=200)),
                ('description', models.TextField()),
                ('published', models.BooleanField()),
                ('image1', models.ImageField(blank=True, null=True, upload_to='uploads/advertisementas/', verbose_name='تصویر 1')),
                ('image2', models.ImageField(blank=True, null=True, upload_to='uploads/advertisements/', verbose_name='تصویر 2')),
                ('image3', models.ImageField(blank=True, null=True, upload_to='uploads/advertisements/', verbose_name='تصویر 3')),
                ('image4', models.ImageField(blank=True, null=True, upload_to='uploads/advertisements/', verbose_name='تصویر 4')),
                ('viewsNum', models.IntegerField(default=0, verbose_name='تعداد بازدیدها')),
                ('publishDate', models.DateField(auto_now_add=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('city', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='advertisement.City', verbose_name='شهر')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
