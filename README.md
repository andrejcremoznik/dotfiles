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
   mkdir -p $HOME/.local/share/applications && \
   mkdir -p $HOME/.ssh
   ```
2. Stow the configs `stow terminal`, `stow nvim`
3. Run `./init-home`

## `mpv` links

You can transform links on a website pointing to video files from `https://` to `mpv://`. A special
XDG handler is set up via `~/.local/share/applications/mpv-scheme-handler.desktop` that will invoke
`mpv` with the provided URL and start stream-playing the file.

1. In any Chromium based browser open [chrome://extensions](chrome://extensions).
2. Enable "Developer mode".
3. Click "Load unpacked" and browse to the `__chrome-extensions/mpv-schema-links` in this repo.
4. On any page with links to video files click the extension icon to turn them to `mpv://` links.
5. Clicking any link will start `mpv`.
