FROM ubuntu
RUN apt-get update && apt-get install -y curl
COPY curl_post /bin/
