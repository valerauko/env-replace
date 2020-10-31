FROM alpine

RUN apk add gettext
RUN echo 'for file in ./*; do cat $file | envsubst > "${DESTINATION:-.}/$file"; done' > /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

CMD /root/entrypoint.sh
