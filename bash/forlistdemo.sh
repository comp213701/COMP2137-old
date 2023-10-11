#!/bin/bash

for username in $(cut -d: -f1 /etc/passwd); do
    if [ "$username" = "root" -o "$username" = "student" ]; then
        echo Found $username
    fi
done
