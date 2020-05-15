#!/bin/bash

docker run  --name=airflow_web -d \
	-v /home/ubuntu/airflow/dags:/usr/local/airflow/dags \
	-v /home/ubuntu/airflow/db:/usr/local/airflow/db \
	-p 8888:8888 \
	--log-opt max-size=10m \
	--log-opt max-file=5 \
		aktechthoughts/airflow_web:1 


