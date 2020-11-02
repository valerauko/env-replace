FROM alpine

RUN apk add gettext
COPY ./entrypoint.sh /root/entrypoint.sh

CMD /root/entrypoint.sh
