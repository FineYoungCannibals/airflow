#!/bin/bash

export AIRFLOW__DATABASE__SQL_ALCHEMY_CONN=$(< /run/secrets/airflow_pg_conn)
export AIRFLOW__CELERY__RESULT_BACKEND=$(< /run/secrets/airflow_celery_pg_conn)
export AIRFLOW__CELERY__BROKER_URL=$(< /run/secrets/airflow_celery_redis_conn)

# Run the real airflow command
exec airflow "$@"
