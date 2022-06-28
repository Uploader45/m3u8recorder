FROM debian:latest


RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/Captainsteve1/m3u8recorder
RUN cd m3u8recorder
WORKDIR /m3u8recorder
RUN pip3 install -U -r requirements.txt
CMD main.py 


