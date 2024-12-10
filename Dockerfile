FROM alpine:3.20 AS flatpak

USER root

RUN apk add \
    --no-cache \
        flatpak flatpak-builder \
        appstream-compose \
        git git-lfs \
        curl wget sudo \
        xz bc \
        flex bash man-db \
        man-pages file shadow \
        gawk diffutils findutils

RUN git config \
    --global \
    --add protocol.file.allow always

RUN flatpak remote-add \
    --if-not-exists \
        flathub https://flathub.org/repo/flathub.flatpakrepo
