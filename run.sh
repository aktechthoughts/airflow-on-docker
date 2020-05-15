#!/bin/bash

docker run --name airflow_web \
      -p 8888:8888 \
      -v /home/ubuntu/airflow/dags:/usr/local/airflow/dags \
      -v /home/ubuntu/airflow/db:/usr/local/airflow/db \
      -d -t aktechthoughts/airflow_web:1



