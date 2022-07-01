FROM python:3.10
WORKDIR /app
COPY requirements.txt /app/
RUN chmod 777 /usr/src/app \
    && apt-get -y update && apt-get -y upgrade \
    && apt-get install -y software-properties-common \
    && apt-get install -y python3 python3-pip python3-lxml \
    curl ffmpeg locales git p7zip-full p7zip-rar xz-utils unzip nano \
    && locale-gen en_US.UTF-8
COPY . /app
#set a default command
CMD python3 main.py
