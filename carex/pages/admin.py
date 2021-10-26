from django.contrib import admin
from .models import messages


# Register your models here.
@admin.register(messages)
class AdminMessages(admin.ModelAdmin):
    list_display = ('fullName', 'email', 'subject')