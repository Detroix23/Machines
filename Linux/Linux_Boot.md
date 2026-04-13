# Linux.
Booting.

## Sources.
https://www.baeldung.com/linux/boot-linux-command-line-mode

## Change default startup.
Startup processes initializer:
```sh
cat /proc/1/comm
```

Toggle on/ off:
```sh
sudo systemctl set-default multi-user.target
sudo systemctl set-default graphical.target
```

## One time, on boot, with GRUB:
Enable:
- Press: `e`;
- Change (**1**) for (**2**):
(**1**)
```
linux      /boot/vlmlinuz-5.13.0-51-generic root=UUID=731597f6-ff21-48c3-ac3c-e7dfb0403fad ro quiet spalsh $vt_handoff
```
(**2**)
```
linux      /boot/vlmlinuz-5.13.0-51-generic root=UUID=731597f6-ff21-48c3-ac3c-e7dfb0403fad ro quiet spalsh $vt_handoff 3
```

Restore graphics:
```sh
sudo init 5
```

