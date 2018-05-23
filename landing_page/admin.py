from django.contrib import admin
from django.apps import apps
from .models import NewsletterSub
# Register your models here.

## This registers the models in the Admin page.
app = apps.get_app_config('landing_page')
for model_name, model in list(app.models.items()):
    admin.site.register(model)