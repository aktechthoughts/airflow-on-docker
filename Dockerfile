
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1

EXPOSE 8888

COPY start_airflow.sh /opt/airflow

CMD ["sh","/opt/airflow/start_airflow.sh"]           




