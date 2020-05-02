# Working with efi.

```bash
# show all efi records
efibootmgr
# for delete record
efibootmgr -Bb _four_digits_
```

# grub

It's good to mount efi partition to `/efi`

```bash
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB --recheck

# grub config gen
grub-mkconfig -o /boot/grub/grub.cfg
```