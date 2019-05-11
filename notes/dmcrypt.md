# some old drive

## secure erase

https://wiki.archlinux.org/index.php/Dm-crypt/Drive_preparation#Secure_erasure_of_the_hard_disk_drive
```bash
# set bs=1M to increase performance
dd if=/dev/zero of=/dev/mapper/to_be_wiped bs=1M status=progress
```

# Partions

# Software
https://wiki.archlinux.org/index.php/Partitioning

Should use `cfdisk` or `cgdisk`.

## efi partion size
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions#diskpartitionrules

Size for efi partion should be at least 260mb for modern 4k drives.



# base info 
https://wiki.archlinux.org/index.php/Dm-crypt/Encrypting_an_entire_system

## LVM on LUKS

Base scenario for encryption

