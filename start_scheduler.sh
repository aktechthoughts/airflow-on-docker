#!/bin/bash

airflow scheduler -D \
	--stdout /opt/airflow/logs/scheduler/latest/scheduler_log.log \
	--stderr /opt/airflow/logs/scheduler/latest/scheduler_log.err


