from django.urls import path
from .views import version_info

urlpatterns = [
    path('version/', version_info, name='version')
]