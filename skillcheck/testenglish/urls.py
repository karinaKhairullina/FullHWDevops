from django.urls import path, include
from . import views
from .views import Register

urlpatterns = [
    path('', include('django.contrib.auth.urls')),
    path('home/', views.main_page, name='main_page'),
    path('test_yourself/', views.main_test, name='test_yourself'),
    path('test_yourself_result', views.test_yourself_result, name='test_yourself_result'),
    path('help/', views.help_page, name='help_page'),
    path('login/', views.login, name='login'),
    path('register/', Register.as_view(), name='register'),
    path('tests/', views.tests_page, name='tests_page'),
    path('tests/level-<int:level>/', views.tests_by_level, name='tests_by_level'),
    path('tests/level-<int:level>/result', views.tests_by_level_result, name='tests_by_level_result'),
]
