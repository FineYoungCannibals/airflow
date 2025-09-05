# airflow
Airflow


## Portainer Deployment Notes 

- the airflow_celery_pg_conn secret has an interesting nuance. YOu need to craft the connection string with db+postgresql+psycopg2 in order for sql alchemy to pick it up correctly.
- I have chosen to deploy this with connection pools in mind use the following conn string where appropriate: 
  (db+)postgresql(+psycopg2)://airflow:<pw>@<host>:<port>/airflowpool?sslmode=require

