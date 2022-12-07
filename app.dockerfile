FROM alpine:latest


ADD crontab.txt /home/crontab.txt
ADD script.sh /home/script.sh
COPY entry.sh /home/entry.sh
RUN apk update && apk add bash
RUN apk --no-cache add curl
RUN chmod 755 /home/script.sh /home/entry.sh
RUN /usr/bin/crontab /home/crontab.txt

CMD ["/home/entry.sh"]