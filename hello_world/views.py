# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http.response import HttpResponse

# Create your views here.
def homePageView(request):
    return HttpResponse('Hello, World New!')
