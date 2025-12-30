****Network Commands:****
Active network configurations: ifconfig or ip addr show
To Ping to other nodes: ping <ip_addr>
To make an entry of node : /etc/hosts
To trace the pinging: tracert <ip_addr>
To fetch tcp open ports on machine: netstat -antp
To fetch open ports on machine: ss -tunlp
To fetch open ports: nmap <ip_addr> or nmap --> but it is illegal in few countries and should not be run on public machines and should be aware
To fetch about dns info: dig <ip_addr/alias> or nslookup <alias>
To fetch the gateways: route -n or route
To add the kernels to arp table: arp
Similar to trace route: mtr --> shows about hop and packet loss aswell
Similar to nmap : telnet <ip_addr>