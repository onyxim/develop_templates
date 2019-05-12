# Frequency scaling
https://wiki.archlinux.org/index.php/CPU_frequency_scaling

## default governor

Outbox runs `powersave` governor. It works fine.

## Turbo boost

Turbo boost by default doesn't work on some PC. Like T580. Don't know yet how to fix it.

# TLP
https://wiki.archlinux.org/index.php/TLP

TlP is too limiting. With it enabled CPU frequency never goes up some value because of thermal control.

I decided to not to use it.

But `tlp-stat` is useful for get information about batteries. So:

```bash
# /etc/default/tlp
TLP_ENABLE=0
```