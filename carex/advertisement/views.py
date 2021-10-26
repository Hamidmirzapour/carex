from django.shortcuts import render, get_object_or_404
from django.http import Http404
from django.contrib import messages
from datetime import datetime, date, timedelta
from django.contrib.auth.decorators import login_required
from .models import City, Advertisement
from .forms import AdvertisementForm
# Create your views here.


def advertisements(request):
    advertisements = Advertisement.objects.filter(published=True).order_by('-created')
    today = date.today
    context = {
        'today': today,
        'advertisements': advertisements,
    }
    return render(request, 'advertisement/advertisements.html', context)

def detail(request, pk):
    advertisement = get_object_or_404(Advertisement, id=pk)
    context = {
        'advertisement': advertisement,
    }
    return render(request, 'advertisement/detail.html', context)


@login_required
def create(request):
    create_form = AdvertisementForm(request.POST or None, request.FILES or None)
    if create_form.is_valid():
        form = create_form.save(commit=False)
        form.user = request.user
        advertisement = form.save()

        
        messages.success(request, ('آگهی با موفقیت ثبت شد'), 
        extra_tags='alert alert-success safe')
    
    context ={
        'form': create_form,
    }
    return render(request, 'advertisement/create.html', context)


def edit(request, pk):
    
    advertisement = get_object_or_404(Advertisement, id=pk)

    edit_form = AdvertisementForm(request.POST or None, request.FILES or None, instance=advertisement)
    if edit_form.is_valid():
        edit_form.save()
        messages.success(request, ('آگهی شما با موفقیت ویرایش شد'), extra_tags='alert alert_success')
    context ={
        'advertisement': advertisement,
        'form': edit_form,
    }
    return render(request, 'advertisement/edit.html', context)


def delete(request, pk):
    if not request.user.is_staff:
        raise Http404
    
    advertisement = get_object_or_404(Advertisement, id=pk)
    if post.delete():
        messages.success(request, ('آگهی شما با موفقیت حذف شد'), extra_tags='alert alert-success')
    
    return render(request, 'advertisement/delete.html', {'advertisement': advertisement})
