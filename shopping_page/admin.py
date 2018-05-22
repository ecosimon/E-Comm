from django.contrib import admin
from django.apps import apps
from .models import *
# Register your models here.

app = apps.get_app_config('shopping_page')
for model_name, model in list(app.models.items()):
    admin.site.register(model)