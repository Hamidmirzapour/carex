from django.shortcuts import render, get_object_or_404
from datetime import datetime, date, timedelta
from django.http import HttpResponse
from django.contrib import messages
from .forms import MessageForm

from car.models import Car
from advertisement.models import Advertisement
# Create your views here.
def index(request):
    return render(request, 'pages/index.html')

def main(request):
    cars = Car.objects.all().order_by('-created')[:3]
    advertisements = Advertisement.objects.all().order_by('-created')[:3]
    now = date.today()
    yesterday = date.today() - timedelta(days=1)
    twoDaysAgo = date.today() - timedelta(days=2)
    threeDaysAgo = date.today() - timedelta(days=3)
    fourDaysAgo = date.today() - timedelta(days=4)
    fiveDaysAgo = date.today() - timedelta(days=5)
    sixDaysAgo = date.today() - timedelta(days=6)
    oneWeeksAgo = date.today() - timedelta(weeks=1)
    twoWeeksAgo = date.today() - timedelta(weeks=2)
    threeWeeksAgo = date.today() - timedelta(weeks=3)
    fourWeeksAgo = date.today() - timedelta(weeks=4)
    context = {
        'advertisements': advertisements,
        'cars': cars,
        'now' :now,
        'yesterday': yesterday,
        'twoDaysAgo': twoDaysAgo,
        'threeDaysAgo': threeDaysAgo,
        'fourDaysAgo': fourDaysAgo,
        'fiveDaysAgo': fiveDaysAgo,
        'sixDaysAgo': sixDaysAgo,
        'oneWeeksAgo': oneWeeksAgo,
        'twoWeeksAgo': twoWeeksAgo,
        'threeWeeksAgo': threeWeeksAgo,
        'fourWeeksAgo': fourWeeksAgo,
    }
    return render(request, 'pages/main.html', context)

def team(request):
    return render(request, 'pages/team.html')

def gallery(request):
    return render(request, 'pages/gallery.html')

def contact(request):
    create_form = MessageForm(request.POST or None, request.FILES or None)
    if create_form.is_valid():
        form = create_form.save(commit=False)
        message = form.save()


        messages.success(request, ('پیام شما با موفقیت ثبت شد'), 
        extra_tags='alert alert-success safe')

    context ={
        'form': create_form,
    }   
    return render(request, 'pages/contact.html', context)