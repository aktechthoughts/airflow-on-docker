#!/bin/bash

airflow db init \
    && airflow users create -r Admin \
       -u airflow \
       -p airflow \
       -e abhishek_ku@yahoo.com \
       -f abhishek \
       -l kumar 

airflow webserver -p 8888 & 

airflow scheduler > /opt/airflow/logs/scheduler/latest/scheduler_log.log &



