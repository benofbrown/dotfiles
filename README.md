My Config files for a few things. Not very interesting for anyone other than me, but at least they are safe here ;)

They've been set up to be used with [GNU Stow](https://www.gnu.org/software/stow/).

e.g:

    git clone https://github.com/benofbrown/dotfiles.git
    cd dotfiles
    stow vim

---

## Gnome settings

Not really sure where to place these but didn't want them lost to the mists of time so here they are:

    gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'
    gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
    gsettings set org.gnome.mutter check-alive-timeout 60000

