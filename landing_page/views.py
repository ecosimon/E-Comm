from django.shortcuts import render
from .models import *
from .forms import *
# do we need to import models here? if so what kind of models will you be adding here?
# take a step back and see what you need to do here first, did you even create models for your models.py? 

# Create your views here.
def index_view(request):
    return render(request, 'index.html', {})
	
def Newsletter_sub(request):
    if request.method == 'POST':
        form = NewsletterSignUp(request.POST)
        if form.is_valid():
           form.save()
		   # sends email to subscriber
           subject = "Welcome to 808Prints newsletter!"
           from_email = settings.EMAIL_HOST_USER
           to_email = form.email
           signup_message = """Thank you for signing up! We will only send out emails when we have promotions or updates!"""
           send_email(subject=subject, from_email=from_email, recipient_list=to_email,
                        message=signup_message, fail_silently=False)   
    else:
        form = NewsletterSignUp()
	
    template_name = 'templates/index.html'
    context = {'form': form}
    return render(request, template_name, context)
	
def Newsletter_unsub(request):
    pass