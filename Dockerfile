FROM ubuntu:latest

WORKDIR /app

COPY requirements.txt /app
COPY djnagoProj /app

RUN apt-get update && \
    apt-get install python3 python3-pip && \
    pip install -r requirements.txt && \
    cd djnagoProj

ENTRYPOINT [ "python3" ]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]

