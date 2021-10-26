from django import forms
from django.forms import ModelForm, Textarea
from .models import messages

class MessageForm(ModelForm):
    class Meta:
        model = messages
        fields = ('fullName', 'email', 'subject', 'messageBody')