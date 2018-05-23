# README #

This is a work in progress for my employer Wilson Mei.

### What is this repository for? ###

*This repository is for my instructor to view and inspect my code progress.

The files you see now is the root, the first three folders are the main apps of the project. 
Landing_page, secondary_page and shopping_page. Each of these apps have their own respective purpose.
wilsite folder is the project folder that contains the settings.py and the main urls.py.

In the landing_page app, its purpose is to provide the user landing onto the page with the fading logo, 
followed by the work gallery presented as the second parallax. When the images are clicked in the gallery 
a modal will pop up fading out the background and expanding the current image bigger and providing a 
description of the photo, sample photos were included. Lastly the newsletter feature is the last parallax 
of the page, it takes in both String values for Name and Email, if an empty input is submitted a validation 
error will be invoked.

Another page was added in the landing_page app. Its template is called about-wilson, this template/page is solely 
about Mr. Mei's input on the company.

In secondary_page, it was added after the second meeting with Mr. Mei. Its purpose is to provide customers with 
808Prints services, followed by a contact us form. This form takes in Email, Subject and Message inputs, all String 
values. When submitted, the mail will be send to my email by default for testing purposes.

Lastly the shopping_page app has a small mock up implemented displaying the image of a product and preceeding attributes 
that follow a product for sale. As of the moment, there is no online payment implemented because of lack of time for research 
and implementation.

*With that being said let's move on to setting up environment

### In order for this project to work on your own local environment ###
### These instructions will solely be for Windows ###

First, create a new folder for this project.

Change directory to that folder, if you haven't already, install Python 3.6 and set it in your PATH as well.

### We will now move on to setting up our virtual environment.

Once you've changed directory to your project folder, type in the command: python -m venv venv
that line creates the venv inside the project folder. To activate your venv, 
type this command: venv\scripts\activate

You should see (venv) on your left side of the terminal next to your input, that indicates you're now in your venv.

### Installing Pip and Django's framework

Let's install/upgrade pip to the latest version, command: pip install --upgrade pip
followed by the command to install django's framework: pip install django~=1.11.0

Now that we have pip and Django installed in this directory, we need to grab a SECRET_KEY for this working project repo.
We'll create a fodder project to create a new key for the project.
First run this command in the terminal in your project directory: admin-django.exe startproject samplesite .
Exactly like that, and after entering that code you should see a samplesite folder in the same directory. 
Go into that folder, right click settings.py into your editor and copy down the SECRET_KEY = 'dfdfdfdfs key adasdsa'
that key will be used later on for the cloned repo.

### Install PostgreSQL and follow its instructions to set in PATH
It is very important that you save the information user/pass for the login of your own database.
To make it easier on yourself, set your username as postgres and password something relatively easy.
Once this is installed, let's open the database and login to our postgres with your information.
Run the command: psql <postgres> <username>, then it will prompt you for your password.

Once you're in you should see, postgres=#. 
Let's create a database for our current project now.
Type in this command: CREATE DATABASE wilsite;
Once you're done we can exit this terminal.

### If you haven't already, download Git Bash

Assuming that you have git bash installed as well, if you have not then download git bash and set the 
PATH as well. The Git Bash is used for cloning and pulling this repository to your project folder.

### Open your git bash to clone this repository

As the title states, clone this repository in your working directory and switch back to your terminal.
After cloning you'll see, your venv folder, the samplesite and the Wil-site folder. 
Change directory to Wil-site and run the command: pip install -r requirements.txt
this installs all the required modules for the project.

### This is optional, if you already have your own code editor then use that, other wise..
I prefer using NotePad++, so if you don't have an editor download it and open it to follow the instructions.

### Before we start, we need to understand the structure of the project
There are 3 apps and 1 project folder, the 3 apps are, landing_page, secondary_page and shopping_page.
The project folder is wilsite. What are these? The project folder is basically the skeleton of the 
project and the apps are the applications being run on the project. These apps are not build all together 
in the same app because they all serve different purposes. For example, the landing_page serves the user 
when the user first lands on the current page. 

To get started we need to configure some things in the project folder, so click the wilsite project folder.
You should be able to see settings.py, right click settings.py and open it in the editor.

One of the modules that we've installed in the requirements.txt was the Python Decouple module.
This module partitions private information from the codebase to avoid any sensitive information stolen.

Now that we're in the settings.py, scroll down and you'll see, is SECRET_KEY = config('SECRET_KEY'),
remember that we saved the secret_key from the samplesite fodder project? Now is the time to use that key.
First we need to create a new page in your editor, type SECRET_KEY = 'your secret key' and save it as .ENV for the title 
and save it inside the root project folder where you see manage.py. The .ENV file and the config() function you see 
in the settings is the works of the DECOUPLE module.

INSTALLED_APPS in order for the 3 apps that 
I have mentioned to work in this project, those apps needed to be added in this list.

ROOT_URLCONF is pointed towards the wilsite projects folder, urls.py. That is the main path and we'll get to that
in a bit.

Now in the DATABASES, in ENGINE: we've installed the Postgres module for this backend which was psycopg2.
You notice the NAME and its value config'DB_NAME')? We'll thats what decouple does for our code. 
Open the previously saved .ENV file and type up DB_NAME = 'wilsite', DB_USER = 'name of you database, it 
should be postgres', DB_PASSWORD = 'your db pw' and lastly DB_HOST = 'localhost' everything just like that 
except for DB_USER and DB_PASSWORD if you have it differently. 
Once you've finished, save this file as .ENV in the title and save this in your ROOT project where you see manage.py in.

Scroll all the way down and you'll see STATIC / MEDIA variables, these are already mentioned in the final report.
But i'll mention it here as well, STATIC is meant to serve the static files in the project such as, the CSS, Images and 
Javascript. Where as the MEDIA is meant to serve the user uploaded images, in this case sample pictures added for this project.

Further down we will see EMAIL_HOST and proceeding variables, this section handles the send_mail module in Django.core.mail.
To get started for this section, go to sendgrid.net and create your own free account which allows a free use of 100 mails forever.
Once you have your sendgrid account, open up the .ENV file we saved earlier, and add in EMAIL_HOST = 'smtp.sendgrid.net', 
EMAIL_HOST_USER = 'your sendgrid username', EMAIL_HOST_PASSWORD = 'your sendgrid password'. That should settle everything, hit save. 

We can close the settings.py now and open up the urls.py in the project folder.
In the urls.py, we see the urlpatterns. This pattern is the path of the localhost:8000/ it directs the user to the paths indicated.
In this case we've included all 3 apps url paths, what this means is that in each of the 3 apps they have their own urls.py, this 
basically extends their urls to the project url path.

Let's move on to viewing one of the apps folders. Click on landing_page and lets view through the files.
First open models.py, briefly this module holds the skeleton of objects and placed in the database, we can imagine 
these objects as tables and rows of information in our database. 

Moving on to views.py, this module is the brains of the site, it processes information and it also handles GET/POST request.
For example in the index_view function, if we recieved a request for posting, we'll process that information and handle it in a form 
object. You can read the documentation in the file to get a better understanding.

Moving on to forms.py, as we mentioned in the views.py when posting information, we handle the information with forms. In this module 
we create a form object to handle the appropriate information being posted, in this case NewsLetterSignUp which takes in String values for name and email. 

Moving on to urls.py, i've mentioned about the extension of urls in the included url path of wilsite/urls.py. Back in the project urls.py when we included the landing_page.urls it was pointing to this file. What that does is, it takes the url paths of these extensions and include it to the main url path. So for example, if we land on localhost:8000/ we're actually in the index of landing_page. 

Within the same landing_page directory, go into templates and you'll see Base.html which extends to all other apps templates. Landing.html is the landing page of the app and about-wilson is a side page about Wilson's input.

For other apps, secondary_page and shopping_page the same format can be followed throguh the explanation but different inputs.

### Running the application

Now that we have a feel of what the structure of the project feels like, let's run the project. 
Back in your terminal, type the command: python manage.py runserver
If you set all your configs correctly in your .ENV file you should have no problem starting up the server.


CAVEATS: At the moment I can't seem to get the staticfiles to serve on the repository, currently handling this issue.
For the mean time i'll include the pictures of the site along with the physical report and also through email to you.
