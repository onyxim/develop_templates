# wi-fi

## enable wi-fi interface
https://wiki.archlinux.org/index.php/Wireless_network_configuration#Get_the_name_of_the_interface

```bash
# try to know interface name
iw dev

# activate interface
ip link set _interface_ up

# discover access points
iw dev _interface_ scan | less
```

## connect to network with WPA
https://wiki.archlinux.org/index.php/WPA_supplicant#Connecting_with_wpa_passphrase
Now connect to WPA network:
```bash
# don't forget to shield symbol like ! in password or name
wpa_supplicant -B -i _interface_ -c <(wpa_passphrase _MYSSID_ _passphrase_)

# get ip through DHCP
dhcpcd
```

# ssh

## set root password

For connection with ssh, there need to be password for connection. We will use root user, because it's handy.
```bash
passwd root
```

## view current ip address
```bash
ifconfig
```

## start ssh server

```bash
systemctl start sshd.service
```

## connect from other pc in the same network
```bash
ssh root@192.168.0.2
```