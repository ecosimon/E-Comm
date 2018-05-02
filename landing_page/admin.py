from django.contrib import admin
from django.apps import apps
from .models import NewsletterSub
# Register your models here.

# class NewsletterAdmin(admin.ModelAdmin):
    # list_display = ('email', 'date_added',)
	
# admin.site.register(NewsletterSub, NewsletterAdmin)

app = apps.get_app_config('landing_page')
for model_name, model in list(app.models.items()):
    admin.site.register(model)