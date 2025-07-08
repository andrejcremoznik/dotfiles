# .files

## During Arch install

After `chroot /mnt`

1. Run `./install-packages` and select the groups to install. `base` at the minimum.
2. Run `./init-root`

## After booting into a user session

1. Pre-create some dirs so Stow doesn't put symlink too far up poluting your repo with junk
   ```sh
   mkdir -p $HOME/.config/fcitx5/conf && \
   mkdir -p $HOME/.config/fish/functions && \
   mkdir -p $HOME/.config/yazi && \
   mkdir -p $HOME/.gnupg && chmod go-rwx $HOME/.gnupg && \
   mkdir -p $HOME/.local/share && \
   mkdir -p $HOME/.ssh
   ```
2. Stow the configs `stow terminal`, `stow nvim`
3. Run `./init-home`
