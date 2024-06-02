#!/bin/bash

check_service_status() {
    local service_name=$1

    if launchctl list | grep -q "$service_name"; then
        echo "The service '$service_name' is running."
    else
        echo "The service '$service_name' is not running."
    fi
}

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

service_name=$1

check_service_status "$service_name"
