from django.shortcuts import render
from django.http import JsonResponse
from .helpers import get_version

# Create your views here.
def version_info(request):
        data = {
                "author": "Mahmoud Abdelmoneim",
                "version": get_version()
        }
        return JsonResponse(data)
