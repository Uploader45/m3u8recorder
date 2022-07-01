FROM python:3.10
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install ffmpeg
COPY . /app
#set a default command
CMD python3 main.py
