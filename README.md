# airflow
Airflow


## Portainer Deployment Notes 

- the airflow_celery_pg_conn secret has an interesting nuance. YOu need to craft the connection string with db+postgresql+psycopg2 in order for sql alchemy to pick it up correctly.
