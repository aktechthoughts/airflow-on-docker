
##############################################################################################
# This is the build image where we build all dependencies
##############################################################################################
FROM aktechthoughts/airflow_web:1
CMD [airflow init db]


