# What drivers to select?

`xf86-video-intel` driver is better then kernel mode setting. It can be observed in Chrome. Page loads faster. It works ok on 4k display.

# Tearing
https://wiki.archlinux.org/index.php/Intel_graphics#Tearing

Tried to fix tearing in VLC player. It won't make difference. Continue observation.

Place file as described below.
```bash
#/etc/X11/xorg.conf.d/20-intel.conf

Section "Device"
  Identifier  "Intel Graphics"
  Driver      "intel"
  Option      "TearFree" "true"
EndSection
```

This file probably caused xorg freeze and crash. Delete it.