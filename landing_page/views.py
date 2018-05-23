from django.shortcuts import render, get_object_or_404
from django.http import JsonResponse
from django.core.mail import send_mail
from .models import *
from .forms import *

# Create your views here.
def index_view(request):
    """
    This function is the landing page function that processes all the given data of the landing_page. 
    It takes in a post request from the newsletter submission and processes the data through validation.
    If the request was a post, then sets a form instance of NewsLetterSignUp and placing the post inside it.
    It is then passed a form validation, if it passes than a new model is created called NewsLetterSub and saved in the database.
    After submitting, an email is sent to the subscriber and then returned back to the index page with an empty form.
	
    Inputs: When submitting data to the form NewsLetterSignUp, the inputs for Name and Email both take String values.
	
    Variables: 
        samples - makes a queryset to the database and pulls all the existing SampleShirt model objects.
        template - holds the landing.html string name which will be passed in the rendering function.
    """
    samples = SampleShirt.objects.all()

    template = 'landing.html'
    if request.method == 'POST':
        form = NewsLetterSignUp(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            new_sub = NewsletterSub(name=cd.get('name'), email=cd.get('email'))
            new_sub.save()
			
			#Send email confirmation to user
            subject = 'Successfully subscribed to 808Prints!'
            message = 'You have successfully subscribed to our subscription! We will only email you if we have new promotions!'
            from_email = 'liu_simon_eco@yahoo.com'
            to_email = cd.get('email')
            send_mail(subject, message, from_email, [to_email], fail_silently=False)
			
            form = NewsLetterSignUp()
            context = { 'form': form }
            return render(request, template, context)
    else:
        form = NewsLetterSignUp()
    context = {'samples': samples, 'form': form}
    return render(request, template, context)
	
def about_me_view(request):
    """
    This function processes the about me page for Wilson.
    """
    return render(request, 'about-wilson.html', {})	
