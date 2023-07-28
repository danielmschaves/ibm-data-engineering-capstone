from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2023, 7, 28),
    'email': ['airflow@example.com'],
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'process_web_log', default_args=default_args, schedule_interval=timedelta(days=1))

extract_data = BashOperator(
    task_id='extract_data',
    bash_command='awk \'{print $1}\' /home/project/airflow/dags/capstone/accesslog.txt > /home/project/airflow/dags/capstone/extracted_data.txt',
    dag=dag)

transform_data = BashOperator(
    task_id='transform_data',
    bash_command='grep -v "198.46.149.143" /home/project/airflow/dags/capstone/extracted_data.txt > /home/project/airflow/dags/capstone/transformed_data.txt',
    dag=dag)

load_data = BashOperator(
    task_id='load_data',
    bash_command='tar -cvf /home/project/airflow/dags/capstone/weblog.tar /home/project/airflow/dags/capstone/transformed_data.txt',
    dag=dag)

extract_data >> transform_data >> load_data
