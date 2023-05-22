FROM python:3.10-slim
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
COPY crontab /etc/cron.d/crontab
COPY app-scheduled.py /app/app-scheduled.py
COPY app2.py /app/app2.py
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

# run crond as main process of container
# CMD ["cron", "-f"]
CMD python /app/app2.py & cron -f
#CMD ["python", "app-scheduled.py"]