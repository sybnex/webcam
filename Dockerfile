FROM arm32v6/alpine
LABEL maintainer="sybnex"

RUN apk --no-cache add python3 \
    && pip3 install --upgrade pip \
    && pip3 install picamera --no-cache-dir \
    && adduser -D webcam

COPY webcam.py /

USER webcam

CMD [ "python3", "webcam.py" ] 
