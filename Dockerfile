FROM alpine

RUN apk add gettext
RUN echo 'mkdir -pv "${DESTINATION:-.}"; for file in ./*; do cat $file | envsubst > "${DESTINATION:-.}/$file"; done' > /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

CMD /root/entrypoint.sh
