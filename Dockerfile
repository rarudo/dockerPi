FROM resin/rpi-raspbian:jessie-20160831
RUN apt-get update && apt-get install -y curl
COPY curl_post /bin/
