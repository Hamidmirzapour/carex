# Generated by Django 2.2.4 on 2019-08-31 13:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='messages',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullName', models.CharField(max_length=200, verbose_name='نام و نام خانوادگی')),
                ('email', models.EmailField(max_length=254, verbose_name='ایمیل')),
                ('subject', models.CharField(max_length=200, verbose_name='موضوع')),
                ('messageBody', models.TextField(verbose_name='متن پیام')),
                ('dateTime', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
