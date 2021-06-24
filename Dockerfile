FROM python:3.8

ENV PYTHONUNBUFFERED 1
EXPOSE 8000

RUN mkdir /poll_service

WORKDIR /poll_service

COPY ./mysite/requirements.txt /poll_service

RUN pip3 install -r requirements.txt --no-cache-dir

COPY ./mysite /poll_service

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
