# On Fonts

## Canonical location(s) of System Fonts

### Linux

```
/usr/share/fonts/
/usr/local/share/fonts/
$HOME/.fonts
$HOME/.local/share/fonts
```

* NixOS — see https://nixos.wiki/wiki/Fonts

### MacOs/iOS

```
/Library/Fonts
/System/Library/Fonts
/System/Library/AssetsV2
/Network/Library/Fonts
$HOME/Library/Fonts
```

### Windows

```
%SYSTEMROOT%\Fonts
C:\Windows\Fonts
%USERPROFILE%\AppData\Local\Microsoft\Windows\Fonts
%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Fonts
```

### FontConfig based Systems

see https://specifications.freedesktop.org/basedir-spec/latest/

```
$XDG_DATA_DIRS -> /usr/local/share:/usr/share
$XDG_DATA_HOME -> $HOME/.local/share

/usr/local/share/fonts
/usr/share/fonts
$HOME/.local/share/fonts
```

list directories

```
$ fgrep '<dir' /etc/fonts/fonts.conf /etc/fonts/conf.d/*.conf
$ fgrep '<dir' $HOME/.config/fontconfig/fonts.conf $HOME/.config/fontconfig/conf.d/*.conf
```

list actual fonts

```
$ fc-list | cut -f1 -d: | sort
```
