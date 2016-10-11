FROM alpine:3.4

RUN apk add --update ca-certificates openssl
RUN wget -O /tmp/consul.zip https://releases.hashicorp.com/consul-replicate/0.2.0/consul-replicate_0.2.0_linux_amd64.zip \
 && unzip /tmp/consul.zip \
 && mv consul-replicate /bin/consul-replicate \
 && rm /tmp/consul.zip

CMD ["/bin/consul-replicate"]
