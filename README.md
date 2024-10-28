# PopcornTime-flatpak
PopcornTime Flatpak package (unoffical)

## TODO:
- [ ] Look for a way to allow external players (maybe add patch to use xdg-open)
- [ ] Setup a basic Gitlab CI Pipeline, which stores the flatpak bundle as an artifact


## How to build:
1 - Install [Flatpak](https://flatpak.org/setup/) & flatpak-builder

2 - Add Flathub remote

```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```


3 - Clone the repository

```
git clone https://gitlab.com/Preisschild/popcorntime-flatpak
cd ./popcorntime-flatpak
``` 

4 - Build & Install the Flatpak package
```
flatpak-builder --install --install-deps-from=flathub popcorntime app.popcorntime.PopcornTime.yml
```
You may need super user privileges (ie: `sudo`) to install the Flatpak package for the whole system. Alternatively, to install only for your user:
```
flatpak-builder --user --install --install-deps-from=flathub popcorntime app.popcorntime.PopcornTime.yml
```
