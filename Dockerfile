FROM python:3.12

WORKDIR /app

RUN pip install \
    django~=5.1.0 \
    psycopg~=3.2.2

COPY . ./

ENTRYPOINT ["python3", "manage.py"]
