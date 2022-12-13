FROM alpine:edge

ADD xcc.sh /xcc.sh
ADD hatn /usr/local/bin/hatn

RUN apk update && \
    apk add -f --no-cache ca-certificates bash && \
    chmod 777 /xcc.sh && \
    chmod 777 /usr/local/bin/hatn

CMD /xcc.sh
