FROM python:3.15.0a5-alpine3.23
LABEL maintainer="imileckiy@gmail.com"

ENV PYTHOUNNBUFFER 1

WORKDIR .

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app

CMD ["python", "app/main.py"]
