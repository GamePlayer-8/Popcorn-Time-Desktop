FROM alpine:3.20 AS flatpak

USER root

RUN mkdir /root/workdir
WORKDIR /root/workdir

COPY *.xml .
COPY *.yaml .
COPY LICENSE.txt .
COPY *.sh .

COPY inst/package.sh .
COPY inst/post.sh .
CMD ["/bin/sh", "-c", "cd /root/workdir/; sh package.sh; sh post.sh"]
