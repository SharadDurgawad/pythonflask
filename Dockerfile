FROM ubuntu:latest

RUN ["apt-get", "update"] && \
RUN ["apt-get", "install", "python-pip", "-y"] && \
RUN ["apt-get", "install", "python-dev", "-y"]

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
