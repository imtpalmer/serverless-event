#!/bin/bash

Project="serverless-event"

if [  -e "../$Project/serverless.yml" ]; then
	echo "skipping... serverless.yaml already exists"
else
	echo "generating... python3 serverless template"
	serverless create \
 		--template "aws-python3" \
 		--name $Project 
fi

if [ -d "../$Project" ] && [ -d "../$Project/venv" ]; then
	echo "virtualenv already exists"
else 
	virtualenv venv --python="/usr/local/bin/python"
fi

if [ -d venv ]; then
	source venv/bin/activate
	pip install psycopg2-binary
fi
