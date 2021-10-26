from django.shortcuts import render
from django.contrib.auth.models import User
from datetime import datetime, date, timedelta
from car.models import Car
from advertisement.models import Advertisement
# Create your views here.


def reports(request):
    
    today = date.today()
    tomorrow = today + timedelta(days=1)
    yesterday = today - timedelta(days=1)
    twoDaysAgo = date.today() - timedelta(days=2)
    threeDaysAgo = date.today() - timedelta(days=3)
    fourDaysAgo = date.today() - timedelta(days=4)
    fiveDaysAgo = date.today() - timedelta(days=5)
    sixDaysAgo = date.today() - timedelta(days=6)
    oneWeeksAgo = date.today() - timedelta(weeks=1)
    twoWeeksAgo = date.today() - timedelta(weeks=2)
    threeWeeksAgo = date.today() - timedelta(weeks=3)
    fourWeeksAgo = date.today() - timedelta(weeks=4)

    todayCarsCount = Car.objects.filter(publishDate__range=[today, today]).count()
    yesterdayCarsCount = Car.objects.filter(publishDate__range=[yesterday, yesterday]).count()
    twoDaysAgoCarsCount = Car.objects.filter(publishDate__range=[twoDaysAgo,twoDaysAgo]).count()
    threeDaysAgoCarsCount = Car.objects.filter(publishDate__range=[threeDaysAgo, threeDaysAgo]).count()
    fourDaysAgoCarsCount = Car.objects.filter(publishDate__range=[fourDaysAgo, fourDaysAgo]).count()
    fiveDaysAgoCarsCount = Car.objects.filter(publishDate__range=[fiveDaysAgo, fiveDaysAgo]).count()
    sixDaysAgoCarsCount = Car.objects.filter(publishDate__range=[sixDaysAgo, sixDaysAgo]).count()
    sevenDaysAgoCarsCount = Car.objects.filter(publishDate__range=[oneWeeksAgo, oneWeeksAgo]).count()
    thisWeekCarsCount = Car.objects.filter(publishDate__range=[oneWeeksAgo, tomorrow]).count()
    lastWeekCarsCount = Car.objects.filter(publishDate__range=[twoWeeksAgo, oneWeeksAgo]).count()
    threeWeeksAgoCarsCount = Car.objects.filter(publishDate__range=[threeWeeksAgo, twoWeeksAgo]).count()
    fourWeeksAgoCarsCount = Car.objects.filter(publishDate__range=[fourWeeksAgo, threeWeeksAgo]).count()

    todayAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[today, today]).count()
    yesterdayAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[yesterday, yesterday]).count()
    twoDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[twoDaysAgo,twoDaysAgo]).count()
    threeDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[threeDaysAgo, threeDaysAgo]).count()
    fourDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[fourDaysAgo, fourDaysAgo]).count()
    fiveDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[fiveDaysAgo, fiveDaysAgo]).count()
    sixDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[sixDaysAgo, sixDaysAgo]).count()
    sevenDaysAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[oneWeeksAgo, oneWeeksAgo]).count()
    thisWeekAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[oneWeeksAgo, today]).count()
    lastWeekAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[twoWeeksAgo, oneWeeksAgo]).count()
    threeWeeksAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[threeWeeksAgo, twoWeeksAgo]).count()
    fourWeeksAgoAdvertisementsCount = Advertisement.objects.filter(publishDate__range=[fourWeeksAgo, threeWeeksAgo]).count()

    todayUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = today).count()
    yesterdayUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = yesterday).count()
    twoDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = twoDaysAgo).count()
    threeDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = threeDaysAgo).count()
    fourDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = fourDaysAgo).count()
    fiveDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = fiveDaysAgo).count()
    sixDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains = sixDaysAgo).count()
    sevenDaysAgoUsersCount = User.objects.filter(is_staff=False).filter(date_joined__contains=oneWeeksAgo).count()
    # thisWeekUsersCount = User.objects.filter(date_joined__contains=[oneWeeksAgo, today]).count()
    # lastWeekUsersCount = User.objects.filter(date_joined__contains=[twoWeeksAgo, oneWeeksAgo]).count()
    # threeWeeksAgoUsersCount = User.objects.filter(date_joined__contains=[threeWeeksAgo, twoWeeksAgo]).count()
    # fourWeeksAgoUsersCount = User.objects.filter(date_joined__contains=[fourWeeksAgo, threeWeeksAgo]).count()


    usersCount = User.objects.filter(is_staff=False).count()
    context = {
        'todayCarsCount': todayCarsCount,
        'yesterdayCarsCount': yesterdayCarsCount,
        'twoDaysAgoCarsCount': twoDaysAgoCarsCount,
        'threeDaysAgoCarsCount': threeDaysAgoCarsCount,
        'fourDaysAgoCarsCount': fourDaysAgoCarsCount,
        'fiveDaysAgoCarsCount': fiveDaysAgoCarsCount,
        'sixDaysAgoCarsCount': sixDaysAgoCarsCount,
        'sevenDaysAgoCarsCount': sevenDaysAgoCarsCount,
        'thisWeekCarsCount': thisWeekCarsCount,
        'lastWeekCarsCount': lastWeekCarsCount,
        'threeWeeksAgoCarsCount': threeWeeksAgoCarsCount,
        'fourWeeksAgoCarsCount': fourWeeksAgoCarsCount,
        'todayAdvertisementsCount': todayAdvertisementsCount,
        'yesterdayAdvertisementsCount': yesterdayAdvertisementsCount,
        'twoDaysAgoAdvertisementsCount': twoDaysAgoAdvertisementsCount,
        'threeDaysAgoAdvertisementsCount': threeDaysAgoAdvertisementsCount,
        'fourDaysAgoAdvertisementsCount': fourDaysAgoAdvertisementsCount,
        'fiveDaysAgoAdvertisementsCount': fiveDaysAgoAdvertisementsCount,
        'sixDaysAgoAdvertisementsCount': sixDaysAgoAdvertisementsCount,
        'sevenDaysAgoAdvertisementsCount': sevenDaysAgoAdvertisementsCount,
        'thisWeekAdvertisementsCount': thisWeekAdvertisementsCount,
        'lastWeekAdvertisementsCount': lastWeekAdvertisementsCount,
        'threeWeeksAgoAdvertisementsCount': threeWeeksAgoAdvertisementsCount,
        'fourWeeksAgoAdvertisementsCount': fourWeeksAgoAdvertisementsCount,
        'usersCount': usersCount,
        'todayUsersCount': todayUsersCount,
        'yesterdayUsersCount': yesterdayUsersCount,
        'twoDaysAgoUsersCount': twoDaysAgoUsersCount,
        'threeDaysAgoUsersCount': threeDaysAgoUsersCount, 
        'fourDaysAgoUsersCount': fourDaysAgoUsersCount,
        'fiveDaysAgoUsersCount': fiveDaysAgoAdvertisementsCount,
        'sixDaysAgoUsersCount': sixDaysAgoUsersCount,
        'sevenDaysAgoUsersCount': sevenDaysAgoUsersCount,
    }

    return render(request, 'report/reports.html', context)