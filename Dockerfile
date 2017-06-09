FROM odise/busybox-curl
VOLUME /opt
CMD /bin/sh
COPY curl_post /bin/
