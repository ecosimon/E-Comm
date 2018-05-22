from django.contrib import admin
from django.apps import apps
from .models import *


app = apps.get_app_config('secondary_page')
for model_name, model in list(app.models.items()):
    admin.site.register(model)