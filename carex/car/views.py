from django.shortcuts import render, get_object_or_404
from django.views.generic import DetailView
from datetime import datetime, date, timedelta
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Car, reservation
from .forms import reservationForm


# Create your views here.

def carList(request):
    cars = Car.objects.all().order_by('-created')
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
    return render(request, 'car/car_list.html', context)    
    

def carDetail(request, pk):
    car = get_object_or_404(Car, id=pk)
    context = {
        'car': car,
    }
    return render(request, 'car/car_detail.html', context)



@login_required
def reserve(request, pk):
    car = get_object_or_404(Car, id=pk)
    
    reserve_form = reservationForm(request.POST or None, request.FILES or None)
    if reserve_form.is_valid():
        form = reserve_form.save(commit=False)
        form.customer = request.user
        form.car = car
        reservation = form.save()


        car.status = 'رزرو شده'
        car.save()

        messages.success(request, 'این خودرو با موفقیت رزرو شد. شما می توانید تمام خوروهای رزرو کرده خود را در  <a href="/accounts/profile">پروفایل</a> شخصی خود مشاهده نمایید.', 
        extra_tags='alert alert-success safe')

    context = {
        'car': car,
        'form': reserve_form
    }
    return render(request, 'car/reserve.html', context)