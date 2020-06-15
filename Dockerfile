
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1

EXPOSE 8888



RUN airflow db init 

RUN airflow users create -r Admin \
       -u airflow \
       -p airflow \
       -e abhishek_ku@yahoo.com \
       -f abhishek \
       -l kumar 

COPY --chown=airflow:airflow  start_scheduler.sh /opt/airflow/
COPY --chown=airflow:airflow emr_config.json /opt/airflow/
RUN mkdir /tmp/input

RUN ["airflow","variables","import","dags/mywork/emr_config.json"]

#RUN ["/bin/sh", "-c", "/opt/airflow/start_scheduler.sh"]
#RUN ["airflow","scheduler","-D"]
#RUN ["/bin/sh", "-c", "airflow scheduler > /opt/airflow/logs/scheduler/latest/scheduler_log.log &"]

CMD ["airflow","webserver","-p 8888"]

