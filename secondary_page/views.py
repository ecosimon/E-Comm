from django.shortcuts import render, get_object_or_404
from django.core.mail import send_mail
from .forms import *

# Create your views here.
def service_view(request):
    """
    This function is the index view of the secondary_page services page. If the contact us submission is posted
    this function receieves the data and creates a form instance holding the information. The data is then 
    validated and passed to their respective intances and send the mail to the company, in this case my email 
    is used for testing purposes.
    """
    if request.method == 'POST':
        form = ContactUs(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
			
            subject = cd.get('subject')
            message = cd.get('message')
            from_email = cd.get('email')
            send_mail(subject, message, from_email, ['liu_simon_eco@yahoo.com'], fail_silently=False)
			
            form = ContactUs()
            context = { 'form': form }
            return render(request, 'services.html', context)
    else:
        form = ContactUs()
    context = { 'form': form }
    return render(request, 'services.html', context)
	
