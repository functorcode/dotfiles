https://brianbuccola.com/how-to-install-xmonad-and-xmobar-via-stack/
```
# From inside ~/.xmonad.
git clone "https://github.com/xmonad/xmonad" xmonad-git
git clone "https://github.com/xmonad/xmonad-contrib" xmonad-contrib-git
git clone "https://github.com/jaor/xmobar" xmobar-git

stack install

chmod a+x build
sudo cp xmonad.desktop /usr/share/xsessions/
sudo cp xmonad.start /usr/local/bin/
sudo apt-get install fonts-font-awesome   --required for xmobar
xmonad --recompile
```



