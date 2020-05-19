#!/bin/bash

docker run --name airflow_web \
      -p 8888:8888 \
      -v /home/abhishek/projects/python/airflow/dag:/opt/airflow/dags \
      -v /home/abhishek/projects/python/airflow/db:/usr/local/airflow/db \
      -d -t aktechthoughts/airflow_web:latest



