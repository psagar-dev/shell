#!/bin/bash

<< Task
    Deploye a Danjago app
    and handle the code for error
Task

code_clone() {
    echo "====== Cloning the Django app start ======="
    if [ ! -d "django-notes-app" ]; then
        git clone https://github.com/LondheShubham153/django-notes-app.git
    else
        echo "Repository already exists. Pulling latest changes..."
        cd django-notes-app || exit 1
        git pull origin main
        
    fi
    echo "====== Cloning the Django app end ======="
}

deploy() {
    echo "====== Building and deploying the Django app start ======="
    if [ ! -f "Dockerfile" ]; then
        echo "ERROR: Dockerfile not found in the repository."
        return 1
    fi

    docker-compose up -d || {
        echo "Failed to build and deploy the app."
        return 1
    }
    echo "====== Building and deploying the Django app start ======="
}


echo "********** DEPLOYMENT STARTED *********"

if ! code_clone; then
    echo "Error"
    exit 1
    #cd django-notes-app || exit 1
    # git pull origin -f
fi

if ! deploy; then
    echo "Deployment failed. Mailing the admin..."
    exit 1
fi

echo "********** DEPLOYMENT END *********"