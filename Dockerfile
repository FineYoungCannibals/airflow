# Base Airflow image
FROM apache/airflow:2.10.5

# Install dependencies
USER root
RUN apt update && apt install -y --no-install-recommends libyara-dev gcc g++ python3-dev git build-essential pkg-config default-libmysqlclient-dev

# Revert back to airflow user
USER airflow
# Python dependencies must be installed by Airflow
RUN pip install --no-cache-dir --force-reinstall git+https://github.com/FineYoungCannibals/regexlibrary.git




# create DAG output folder
RUN mkdir -p /home/airflow/dag_output


# install python packages
COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

COPY entrypoint.sh /opt/airflow/entrypoint.sh
