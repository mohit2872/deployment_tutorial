from django.urls import path, include

from .views import homePageView

urlpatterns = [
    path('', homePageView, name='home'),
    path('', include('hello_world.urls')),
]