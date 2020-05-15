
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1

EXPOSE 8888

RUN airflow db init \
    && airflow users create -r Admin \
       -u airflow \
       -p airflow \       
       -e abhishek_ku@yahoo.com \
       -f abhishek \
       -l kumar \
    && airflow webserver -p 8888 
           




