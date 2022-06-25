#!/bin/bash

PROJECT_NAME=$1

if [ "$1" == "" ]; then
	echo "Enter project name"
  exit 1;
fi

sed -i '' "s/wp.local/$1.local/g" nginx/default.conf &&
sed -i '' "s/wp-local/$1-local/" .env &&
echo "docker project name: $1-local" &&
echo "domain name: $1.local"
