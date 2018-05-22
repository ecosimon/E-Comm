from django.shortcuts import render, get_object_or_404
from django.http import JsonResponse
from django.core.mail import send_mail
from .models import *
from .forms import *

# Create your views here.
def index_view(request):
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
    return render(request, 'about-wilson.html', {})	
