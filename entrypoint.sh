#!/bin/bash

export AIRFLOW__DATABASE__SQL_ALCHEMY_CONN=$(< /run/secrets/airflow_pg_conn)
export AIRFLOW__CELERY__RESULT_BACKEND=$(< /run/secrets/airflow_celery_pg_conn)
export AIRFLOW__CELERY__BROKER_URL=$(< /run/secrets/airflow_celery_redis_conn)
export AIRFLOW__WEBSERVER__SECRET_KEY=$(< /usr/secrets/airflow_webserver_secret)
export AIRFLOW_UID=1000
# Run the real airflow command
exec airflow "$@"
