from django.shortcuts import render
from django.http import HttpResponse,HttpRequest
from django.template.loader import get_template
import requests

# Create your views here.

def index(request):
    return HttpResponse("This is the first view")
    
def htmlPage(request): 
    response = requests.get('http://Flask:9001')
    #response = requests.get('http://167.99.234.75:9001')
    
    return render(request, 'index.html' , {'hello' : response.content.decode("utf-8")})
    #return render(request, 'index.html' , {'hello' : response})
