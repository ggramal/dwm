# My dwm config

Highly inspired by Mr Ampersand 

https://www.youtube.com/@ampersand3636

https://github.com/Andrey0189/dwm-gruvbox


## Installation

1. Create tools dir in home and add it to path

```
mkdir ~/tools
export PATH=${PATH}:$HOME/tools
```

2. Install dwm and dwmblocks

```
pushd dwm
make install
popd
pushd dwmblocks
make install
popd
```

3. Create a `startx.sh` file in home dir with content

```
#!/bin/bash

feh --bg-scale <some_wallpaper>
setxkbmap -layout us,ru -option 'grp:toggle'
xss-lock --transfer-sleep-lock -- i3lock --nofork
dwmblocks &
exec dwm
```

and give it permissions

```
chmod +x startx.sh
```

4. Create or update you `.xinitrc`

```
#!/bin/sh

exec ~/startx.sh
```
