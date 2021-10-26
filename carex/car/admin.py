from django.contrib import admin
from .models import Car, Brand, Country, reservation


# Register your models here.
@admin.register(Brand)
class AdminBrand(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(Country)
class AdminCountry(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(Car)
class AdminBrand(admin.ModelAdmin):
    list_display = ('name', 'brand', 'country', 'cost', 'bodyType', 'yearOfProduction')


@admin.register(reservation)
class AdminReservation(admin.ModelAdmin):
    list_display = ('car', 'customer', 'phone')
    
