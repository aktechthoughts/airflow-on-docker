#!/bin/bash

docker run  --name=airflow_web -d \
    -e AIRFLOW__CORE__SQL_ALCHEMY_CONN=sqlite:////usr/local/airflow/db/airflow.db \
	-v /home/abhishek/airflow/dags:/usr/local/airflow/dags \
	-v /home/abhishek/airflow/db:/usr/local/airflow/db \
	-p 8888:8888 \
	--log-opt max-size=10m \
	--log-opt max-file=5 \
		aktechthoughts/airflow_web:latest \
		webserver -p 8888

