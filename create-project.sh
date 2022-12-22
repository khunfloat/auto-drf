python3 -m venv venv

source venv/bin/activate

pip install django djangorestframework

django-admin startproject app .

mkdir api

touch api/__init__.py

mv statics/settings.py app

mv statics/views.py api

mv statics/urls.py api

touch .gitignore

echo 'venv' >> .gitignore

python manage.py runserver

rm -rf statics