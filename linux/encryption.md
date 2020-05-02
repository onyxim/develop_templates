# some old drive

## secure erase

https://wiki.archlinux.org/index.php/Dm-crypt/Drive_preparation#Secure_erasure_of_the_hard_disk_drive
```bash
# set bs=1M to increase performance
dd if=/dev/zero of=/dev/mapper/to_be_wiped bs=1M status=progress
```


# base info 
https://wiki.archlinux.org/index.php/Dm-crypt/Encrypting_an_entire_system

## LVM on LUKS

Base scenario for encryption.

https://wiki.archlinux.org/index.php/Dm-crypt/Encrypting_an_entire_system#LVM_on_LUKS

## Best partitions scheme.

It's only acceptable when there is SED drive, otherwise intruder with physical access to a pc can replace linux kernel to intercept LUKS password.

Currently the best scheme:
1. efi partition 260mb (as guys from microsoft asked in their specs) efi file system
1. unencrypted partition for `/boot` (300mb type 8300 linux filesystem)
1. luks partition (all remaining space) LUKS file system  `8309` in `cgdisk`

## TRIM
Don't forget to use TRIM on SSD. https://wiki.archlinux.org/index.php/Dm-crypt/Specialties#Discard/TRIM_support_for_solid_state_drives_(SSD)

Edit `/etc/default/grub` like this:
```bash
GRUB_CMDLINE_LINUX="cryptdevice=UUID=_UUID_of_a_partition_:cryptlvm:allow-discards root=/dev/MyVolGroup/root resume=/dev/MyVolGroup/swap"
```

## Encrypted boot downsides

1. Grub takes too much time to unlock LUKS partition.
1. It's need to type again password for partition. Can be solved by 
