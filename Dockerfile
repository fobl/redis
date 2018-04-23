FROM registry.access.redhat.com/rhscl/redis-32-rhel7

MAINTAINER Frode Bjerkenes

COPY etc/* /tmp/.

RUN /tmp/setup-config.sh

CMD ["/usr/bin/redis-server", "/etc/redis.conf"]