***Computer Network: ****
Communication between two or more network interfaces

***Components:***
Two or more devices/computers
Cables/wireless network 
NIC - Network Interfacing Card on each device
device - computer/smart phone
router
switches
sofware - os

***How do they communicate?***
A standard communication format/model has been developed - OSI - Open System Interconnection
Its a 7 layered architecture:
    Physical --> Data Link --> Network -->Transport --> Session --> Presentation --> Application
Basic elements of ISO Model:
    Services  -- set of actions provided by layers to another layer
    Protocols -- Rule
    Interfaces -- Communication between the layers

***Physical Layer:***
    Data will be there in bits, it like a cable between two devices, --> sends the data to data link layer, as soon as it receives the info --> to provide mechanical and electrical specifications
    Protocols: ethernet and token ring
    Devices/apps: hub
***Data Link Layer:***
    Data will be there in frames, try to send the data as error free --> it is like MAC & LLP [Physical Addressing], sends the data to Network Layer --> hop-to-hop delivery
    Protocols:apr[mac], rarp
    Devices/apps: bridge layer 2 switch
***Network Layer:***
    Data will be like packet, responsible for transmitting the data from one node to another node[which could be presented at various network] --> It works on IP Address --> identifies the destination with the help of IP Address --> placed at header
    Protocols: ip, icmp, igmp
    Devices/Apps: router, firewall, layer 3 switch
***Transport Layer:***
    Data will be segments, take the service from network layer and re-provides the service to application layer
    Responsible for end-end delivery of message/data, also provides the acknowledgement, if there is any failure happens also, it will 
    re-transmit the data
    Protocols: tcp/udp
    Devices/Apps: gateway
***Session Layer:***[to establish, manage and terminate sessions], ***Presentation Layer:***[to translate, encryot and decrypt data], ***Application Layer:***[to allow access to network resources]
    In TCP/IP model --> session, presentation and application --> together represented as a single layer --> responsible for security, maintenance
    Protocols:  dns, dhcp, ntp, smtp, ftp, snmp, https, http, ssh, telnet, pop3 etc
    Devices/Apps: web server, mail server, browser, mail client etc

***Classification of Network by Geography:***
1. LAN  --> Local Area Network --> Which are locally connected
2. WAN --> Wide Area Network --> internet --> smartphone accessing website which could have hosted in us region
3. MAN --> Metropolition Area Network --> Metro trains, 
4. CAN --> Campus Area Network --> with in the organization --> Intranet
5. PAN --> Personal Area Network --> Bluetooth 

***Switches:***
These faciliate the sharing of resources by connecting together all devices, including computers, printers and servers in a small business network
***Routers:***
A router receives and sends data on computer networks. Routers are sometimes confused with networ hubs, modems or network switches.
However router combines multiple networks together

***IPV4 Address:***
Range: 0.0.0.0. - 255.255.255.255
32 bits
2[power 7] 2[power 6] 2[power 5] 2[power 4] 2[power 3] 2[power 2] 2[power 1] 2[power 0] 
    128       64         32        16          8         4           2         1       
192. 168. 100. 1
11000000 .  10010100 . 01100100 . 00000001

***Protocols:***
TCP                                     | UDP
Its a reliable protocols                | Not Reliable 
Connection Oriented                     | Connection less
Performs 3 ways of handshake            | Much faster than TCP
Provision for error detection &
retransmission                          | No acknowledgement, no proper sequence of data units
For reliable and guaranteed transmission| Suitable for applications where speed matters than reliability
FTP, HTTPS, HTTP                        | DNS, DHCP, TFTP, ARP, RARP

Ports:
DNS: 53 --> both udp and tcp [Domain Name Service]
http : 80 --> tcp [Web]
https: 443 --> tcp [Secure Web]
smtp : 25 --> tcp [Simple Mail Transport]
POP : 109, 110 --> tcp [Post Office Protocol]
SNMP: 161, 162 --> TCP, UDP [Simple Network Management]
TELNET: 23 --> TCP[Telnet Terminal]
FTP: 20, 21 --> TCP [File Transfer Protocol]
SSH: 22 --> TCP [Secure Shell]
AFP IP: 447, 548 --> TCP [Apple File Protocol/IP]