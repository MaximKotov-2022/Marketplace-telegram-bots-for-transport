FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

CMD ["gunicorn", "bots_for_transport.wsgi:application", "--bind", "0.0.0.0:8000"]
