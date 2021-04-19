#
# Create a python-based web site
#

cd ~/src/www
SITE_NAME=mysite
rm -rf $SITE_NAME

django-admin startproject $SITE_NAME
cd $SITE_NAME

python manage.py startapp polls

cat > polls/views.py <<EOF

from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")
EOF

cat > polls/urls.py <<EOF

from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
]
EOF

cat > $SITE_NAME/urls.py <<EOF

from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('polls/', include('polls.urls')),
    path('admin/', admin.site.urls),
]
EOF

python manage.py runserver



















python manage.py migrate

cat > polls/models.py <<EOF
import datetime
from django.utils import timezone
from django.db import models


class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')
    
    def __str__(self):
        return self.question_text

    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)

class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)
    
    def __str__(self):
        return self.choice_text

EOF

python manage.py runserver


# add to mysite/settings.app

INSTALLED_APPS = [
    'polls.apps.PollsConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]

python manage.py makemigrations polls

python manage.py sqlmigrate polls 0001 (to verify SQL)

python manage.py migrate

# add admin user
python manage.py createsuperuser


Browser: login -

http://127.0.0.1:8000/admin/



cat > polls/admin.py <<EOF

from django.contrib import admin

from .models import Question

admin.site.register(Question)
EOF













