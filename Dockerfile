FROM ghcr.io/fernandoenzo/debian:11
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

COPY static/ddclient.conf /etc
COPY static/ddclient2.conf /etc
COPY static/ddclient.default /etc/default/ddclient
COPY static/ddclient.cron /etc/cron.d/ddclient
COPY scripts/basics /tmp
RUN bash /tmp/basics

