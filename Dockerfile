FROM python:3.11
LABEL org.opencontainers.image.source=https://github.com/hoenlab/immun-signup

RUN apt update && apt upgrade -y && rm -rf /var/lib/apt/lists/*
#RUN apk update && apk upgrade

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8080

CMD [ "python", "main.py" ]
