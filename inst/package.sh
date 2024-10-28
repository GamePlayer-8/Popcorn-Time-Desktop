#!/bin/sh

set -ex

apk add --no-cache flatpak flatpak-builder appstream-compose git git-lfs

git config --global --add protocol.file.allow always

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak-builder --install-deps-from=flathub --install --force-clean build-dir io.github.GamePlayer_8.Popcorn_Time_Desktop.yaml
rm -rf .flatpak-builder build-dir
flatpak build-bundle /var/lib/flatpak/repo popcorn-time.flatpak io.github.GamePlayer_8.Popcorn_Time_Desktop
flatpak uninstall -y --noninteractive io.github.GamePlayer_8.Popcorn_Time_Desktop
