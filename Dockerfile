FROM alpine:3.14

EXPOSE 25/tcp
EXPOSE 465/tcp
EXPOSE 587/tcp

RUN set -xe; \
        apk add postfix \
                postfix-pcre \
                postfix-mysql \
                policyd-spf-fs \
                cyrus-sasl \
                cyrus-sasl-login \
                cyrus-sasl-crammd5 \
                cyrus-sasl-digestmd5 \
                cyrus-sasl-scram; \
        chown root:root /var/spool/postfix /var/spool/postfix/pid
# only for postfix@ alpine 3.8
#       sed -i 's!\($daemon_directory/master\)$!exec \1!' /usr/lib/postfix/postfix-script

VOLUME /etc/postfix
VOLUME /var/spool/postfix
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/postfix", "start-fg"]
