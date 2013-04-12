from fabric.api import local

def updateconf():
    local('knife cookbook upload hosting -o /Users/Anders/Sites/django-chef/cookbooks/')
