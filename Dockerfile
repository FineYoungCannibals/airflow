FROM apache/airflow:2.10.5
COPY entrypoint.sh /opt/airflow/entrypoint.sh
ENTRYPOINT ["/opt/airflow/entrypoint.sh"]
