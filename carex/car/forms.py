from django import forms
from django.forms import ModelForm, Textarea
from .models import reservation



class reservationForm(ModelForm):
    class Meta:
        model = reservation
        fields = ('phone',)
