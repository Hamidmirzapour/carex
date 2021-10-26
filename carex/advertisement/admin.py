from django.contrib import admin
from .models import City, Advertisement

# Register your models here.


admin.site.register(City)
@admin.register(Advertisement)
class AdminAdvertisement(admin.ModelAdmin):
    list_display = ('title', 'category', 'user')
    list_filter = ('publishDate', 'category')
    ordering = ['title']
    search_fields = ('title',)