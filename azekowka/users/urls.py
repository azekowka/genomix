from django.urls import path, include
from . import views
from users.views import Register
urlpatterns = [
    path('', views.users, name='users'),
    path('', include('django.contrib.auth.urls')),
    path('register/', Register.as_view(), name='register'),
]