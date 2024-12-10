#!/bin/sh

set -ex

rm -rf .flatpak-builder build-dir
flatpak-builder --install-deps-from=flathub --install --force-clean build-dir io.github.GamePlayer_8.Popcorn_Time_Desktop.yaml
rm -rf .flatpak-builder build-dir
flatpak build-bundle /var/lib/flatpak/repo popcorn-time.flatpak io.github.GamePlayer_8.Popcorn_Time_Desktop
flatpak uninstall -y --noninteractive io.github.GamePlayer_8.Popcorn_Time_Desktop
