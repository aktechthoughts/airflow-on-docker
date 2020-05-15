#!/bin/bash

docker run  --name=airflow_web -d \
	-v /home/jenkins:/var/jenkins_home \
	-p 8080:8080 \
		aktechthoughts/aws-jenkins-docker:7 \
	--log-opt max-size=10m \
	--log-opt max-file=5


