
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1
RUN [airflow db init]
RUN [airflow webserver -p 8888]


