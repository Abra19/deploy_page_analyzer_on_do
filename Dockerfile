FROM python:3.10

COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip && pip install -r requirements.txt

WORKDIR /app

COPY wsgi.py wsgi.py
COPY app.py app.py
COPY db.py db.py
COPY utils.py utils.py
COPY ./templates ./templates
COPY cert/ca-certificate.crt /etc/ssl/certs/ca-certificate.crt

EXPOSE 8080

ENTRYPOINT [ "gunicorn", "--ca-certs=/etc/ssl/certs/ca-certificate.crt", "--bind", "0.0.0.0:8080", "wsgi:app"]