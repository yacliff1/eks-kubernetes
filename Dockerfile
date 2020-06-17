FROM python:3.7.2-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask


ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]