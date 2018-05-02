from django.shortcuts import render, get_object_or_404

# Create your views here.
def service_view(request):
    return render(request, 'services.html', {})
	
    