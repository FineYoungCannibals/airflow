#!/bin/bash

export AIRFLOW__DATABASE__SQL_ALCHEMY_CONN=$(cat /run/secrets/airflow_pg_conn)
export AIRFLOW__CELERY__RESULT_BACKEND=$(cat /run/secrets/airflow_celery_pg_conn)
export AIRFLOW__CELERY__BROKER_URL=$(cat /run/secrets/airflow_celery_redis_conn)

exec "$@"
