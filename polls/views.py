from django.shortcuts import render
from django.http import HttpResponse
import os

def index(request):
    ambiente = os.getenv("AMBIENTE")
    return HttpResponse(f"Hello, world. You're at the polls index. into ambiente ({ambiente})")
