# Generated by Django 2.2.4 on 2019-08-29 15:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('car', '0005_reservation'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reservation',
            name='phone',
            field=models.BigIntegerField(verbose_name='شماره تماس'),
        ),
    ]