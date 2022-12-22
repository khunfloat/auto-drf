echo "creating python environment"

python3 -m venv venv

source venv/bin/activate

pip install django djangorestframework

echo "starting django project"

django-admin startproject app .

echo "creating api directory"

mkdir api

touch api/__init__.py

mv statics/settings.py app

mv statics/views.py api

mv statics/urls.py api

echo "creating .gitignore"

touch .gitignore

echo 'venv' >> .gitignore

echo "deleting /statics"

rm -rf statics

echo "run server"

python manage.py runserver