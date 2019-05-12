# Console font

## temporary set

Described here: https://wiki.archlinux.org/index.php/HiDPI#Linux_console

```bash
setfont /usr/share/kdb/consolefonts/latarcyrheb-sun32.psfu.gz
```

## default console before xorg

https://wiki.archlinux.org/index.php/Linux_console/Keyboard_configuration#Persistent_configuration

```bash
# /etc/vconsole.conf
FONT=latarcyrheb-sun32
```

### hook
https://wiki.archlinux.org/index.php/Mkinitcpio#Common_hooks

Also add hook `consolefont` after `keymap` hook to change font for early boot process:

```bash
# /etc/mkinitcpio.conf
HOOKS=(base udev autodetect keyboard keymap consolefont modconf block encrypt lvm2 filesystems resume fsck)
```

Don't forget to update linux kernel
```bash
mkinitcpio -p linux
```

# KDE settings

For 4k on 15.6" display, 1.9 scale is fine. Use native resolution - it's fine with properly set driver.

