
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1
RUN [sh airflow db init]
RUN [sh airflow webserver -p 8888]


