#!/bin/bash

PROJECT_DIR="/Desktop/Zemoso-Training/Shell-Scripting-Learning/shell-scripting-assignment/blog-application-next.js14"

WEBHOOK_URL="https://chat.googleapis.com/v1/spaces/AAAAIaQNPUA/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=upNdo_Qayq5ALx9snL0AnNGJ_9jXhTiJYqe9JgZUmcs"

GIT_URL="https://github.com/dev-madhurendra/blog-application-next.js14.git"

send_success_message() {
    local message="Compile successful for project."
    curl -X POST -H 'Content-Type: application/json' -d "{\"text\": \"$message\"}" "$WEBHOOK_URL"
}

send_failure_message() {
    local message="Compile failed for project. Please check logs for details."
    curl -X POST -H 'Content-Type: application/json' -d "{\"text\": \"$message\"}" "$WEBHOOK_URL"
}

clone_or_pull() {
    if [ -d "$PROJECT_DIR" ]; 
    then
        cd "$PROJECT_DIR" || exit
        git pull
    else
        git clone "$GIT_URL"
    fi
}

compile_project() {
    npm install --legacy-peer-deps
    cd blog-application-next.js14 || exit
    npm install next
    npm run dev > /dev/null 2>&1 &
    local npm_pid=$!

    sleep 10

    if ps -p $npm_pid > /dev/null; then
        send_success_message
    else
        send_failure_message
        exit 1
    fi
}

clone_or_pull
compile_project