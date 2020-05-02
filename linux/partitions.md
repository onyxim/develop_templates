# Software
https://wiki.archlinux.org/index.php/Partitioning

Should use `cfdisk` or `cgdisk`.

## efi partition size
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions#diskpartitionrules

Size for efi partion should be at least 260mb for modern 4k drives.

Efi type. Best point to mount `/efi`

```bash
mkfs.fat -F32 /dev/nvme0n1p1
```

# UUID
Use to get UUID:
```bash
blkid
```

You should use UUID, not PARTUUID!