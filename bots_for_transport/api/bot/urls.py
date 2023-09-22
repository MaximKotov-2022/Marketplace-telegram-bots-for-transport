from django.urls import include, path
from rest_framework.routers import DefaultRouter
from .views import BotViewSet

app_name = 'bot'


router = DefaultRouter()


router.register('bots', BotViewSet, basename='bots')


urlpatterns = [
    path('', include(router.urls)),
]