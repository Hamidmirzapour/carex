from django import forms
from django.forms import ModelForm, Textarea
from .models import City, Advertisement













class AdvertisementForm(ModelForm):
    class Meta:
        model = Advertisement
        fields = ('category', 'city', 'title', 'description', 'cost', 'image1', 'image2', 'image3', 'image4')
