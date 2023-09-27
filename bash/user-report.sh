#!/bin/bash

echo "# Procs  User"
echo "-------  -------------------"
ps -eo user --no-headers| sort| uniq -c
