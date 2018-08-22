FROM ubuntu:latest

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "python-pip", "-y"]
RUN ["pip", "install", "--upgrade", "pip"]
RUN ["apt-get", "install", "python-dev", "-y"]

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

EXPOSE 8282
