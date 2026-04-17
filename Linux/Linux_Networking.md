# Linux.
Networking. 

## Devices.
Get addresses:
```bash
hostname -I;
ip address show;
```

## Ports.
Ip informations:
```
id address
```

Listening ports:
```
sudo ss -tunlp
```
-t — Show TCP ports.
-u — Show UDP ports.
-n — Show numerical addresses instead of resolving hosts.
-l — Show only listening ports.
-p — Show the process using the socket. This information is shown only if you run the command as root or sudo user.


```
sudo lsof -nP -iTCP -sTCP:LISTEN
```
-n — Do not resolve hostnames, show numerical addresses.
-P — Do not convert port numbers to port names.
-iTCP -sTCP:LISTEN — Show only network files with TCP state LISTEN.


Services using ports:
```bash
sudo lsof -i:<port>
```

