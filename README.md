<h1>.config</h1>

these are my current config files based on [jellybeans](https://github.com/nanotech/jellybeans.vim) 

check the other branches for older configs -
[ayu-dark](https://github.com/rototrash/dotfiles/tree/ayu-dark) | [tokyo-night](https://github.com/rototrash/dotfiles/tree/tokyo-night) 

## previews

<details>
<summary>preview</summary>
<br><img src="https://cdn.discordapp.com/attachments/780418865158946818/972192548665847808/unknown.png?size=4096"><br>
soon™
</details>

## some overview
- `home/`
    - `.config/`
        - `BetterDiscord`: contains theme files for Discord
        - `gtk-3.0`: sets some theme settings
        - `i3`: i3 config with auto starting applications, borders and gaps settings, etc
        - `picom`: picom config with subtle animations.
        - `polybar`: config for the status bar with modules n shit enabled
        - `rofi`: rofi configs for app lauchers
        - `nvim`: optional nvim config
        - and much more...
    - `.local/share/fonts`: contains the fonts
    - `.scripts`: contains various essential scripts
    - `.mozilla`: contains the custom firefox user css
- `usr/share/themes/Jellybeans`: contains the jellybeans gtk theme

## installing packages and fonts
- required packages:
```shell
sudo pacman -S i3-gaps polybar rofi alacritty dunst light picom-jonaburg-git i3lock-color feh bluez bluez-utils blueberry pavucontrol pamixer starship thunar nvim scrot lxappearance papirus-icon-theme
```
- required fonts:
```shell
yay -S ttf-remixicon ttf-icomoon-feather
```
- optional packages: 
```shell
yay -S mpd ncmpcpp w3m zsh neofetch kitty ranger papirus-folders papirus-folders-gui-bin betterdiscordctl nm-applet
```
- optional fonts:
```shell
yay -S nerd-fonts-jetbrains-mono
```

## installation
- everything from repo's `home` dir will go into your `home` dir
- **gtk theme:** 
    - copy the `Jellybeans` folder inside the `usr/share/themes/` dir of this repo to your `/usr/share/themes/` dir.
    - **applying the theme:** Run `lxappearance` (Customize look and feel) and select Jellybeans.
- **discord theme:** After running `betterdiscordctl install` go into the newly added Better Discord entry in the discord settings menu and select the `midnight` theme.
- **firefox user css:** follow the instructions in [**THIS**](https://github.com/rototrash/tokyo-night-fox) repo to install it. Put the `chrome` folder in your `~/.mozilla/firefox/something.default-release/` dir.

## misc. 
- **bluetooth:** install the bluetooth utilites (`bluez, bluez-utils, blueberry`). enable bluetooth service `sudo systemctl enable --now bluetooth`

- **wallpapers:** [`github.com/rototrash/wallpapers`](https://github.com/rototrash/wallpapers)

- **papirus folder colors:** run `papirus-folders-gui` and select the black theme

- **jellybeans for vscode:** launch vscode Quick Open (Ctrl+P), paste the following command and press enter or just search for it and install it. why am i even writing this 
    ```
    ext install DimitarNonov.jellybeans-theme
    ``` 

- **note:** be careful `i3` config or idk, dont care, somethings might not work the way you want. just go through it before copying it over. Grab parts from it.

- the gtk theme was made by modifying the [Material Black](https://www.gnome-look.org/p/1316887) theme

- the discord theme was made by modifying the [midnight](https://betterdiscord.app/theme/midnight) theme

## keybinds

<kbd>super</kbd> (windows) key is the main modifier.
<details>
<summary> Basic Keybinds</summary>

| Keybind | Action |
| --- | --- |
| <kbd>super + enter</kbd> | Spawn Terminal (alacritty) |
| <kbd>super + shift + enter</kbd> | Spawn Thunar |
| <kbd>super + shift + f</kbd> | Launch rofi launcher |
| <kbd>super + q</kbd> | Close client |
| <kbd>super + shift + space</kbd> | Float active client |
| <kbd>super + space</kbd> | Switch Focus between Floating and Tiled clients |
| <kbd>super + [1-0]</kbd> |  Change workspace |
| <kbd>super + shift + [1-0]</kbd> | Move focused client to workspace |
| <kbd>control + Alt + [arrow keys]</kbd> | Move between active workspaces |
| <kbd>super + e</kbd> | Tiling layout |
| <kbd>super + z</kbd> | Tabbed layout |
| <kbd>super + s</kbd> | Stacked layout |
| <kbd>super + [arrow keys]</kbd> | Change focus by direction 
| <kbd>super + [hjkl]</kbd> | ^ |
| <kbd>super + shift + [arrow keys]</kbd> | Move client by direction. (Floating and Tiled) |
| <kbd>super + shift + [hjkl]</kbd> | ^ |
| <kbd>super + control + alt +[arrow keys]</kbd> | Resize active client |
| <kbd>super + f</kbd> | Toggle fullscreen |
| <kbd>super + shift + r</kbd> | Reload i3 |
| <kbd>super + v</kbd> | Split Client Vertically |
| <kbd>super + b</kbd> | Split Client Horizontally |
| <kbd>super + shift + b</kbd> | hide/unhide polybar |

Go through the i3 config file for more.

</details>

## about
<details>
<summary>some info about my setup</summary>

| Thingy | What I use |
|--- | --- |
| OS | ArcoLinux |
| WM | i3-gaps |
| File Manager | Thunar | 
| Notifications | Dunst |
| Status Bar  | Polybar |
| Launcher | Rofi |
| Shell | zsh |
| Prompt | starship | 
| Editor | vscodium & neovim |
| IDE | QtCreator | 
| Icons | Papirus Dark (Black) |
| GTK Theme | Jellybeans |
| DM | SDDM |
| Lockscreen | i3lock-color |

</details>

## why?
backup in case I fuck up something

## contact
for notifying me if something's missing or wrong or if you want help

discord: [@rototrash#0900](https://discord.com/users/710151070344675418) 

## thanks to
- [mespyr](https://github.com/mespyr/)
- man pages and docs

## License
[**MIT**](https://github.com/rototrash/dotfiles/blob/main/LICENSE)

All attempts have been made to identify third party content within the repository, with sources and attribution given where necessary. Please contact me if any issues are discovered.


