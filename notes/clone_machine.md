```bash
sudo rsync -aAXv -e 'ssh -T -x -o Compression=no' --info=progress2 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / root@192.168.1.23:/mnt
```