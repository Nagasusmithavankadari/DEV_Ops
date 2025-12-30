***UseCase : VProfile - Java based Project***
**Varities of Services that powers your project runtime ex:db services[mysql/oracle], web services[apache/nginx], application services[tomcat/jboss/glassfish]**
**TOOLS NEEDED:**
Hypervisior - oracle vm virtualbox
Automation - Vagrant
CLI - Gitbash
IDE - VisualCode/Sublimetext

**Objective:**
VM Automation locally
Baseline for upcoming projects
Real World project setup locally [for r&d]

***Architecture:***
Nginx
Tomcat
RabbitMq
MemCached
MySQL

***Architecture for Automated Process:***
Vagrant
VirtualBox
GitBash

***Flow of VProfile Application:***
Social Networing/Web based application 
Users --> hit the url --> Provides username and password --> 
Uses Ngix as load balancer [similar to apache ] --> as soon as receive the request --> 
we route the request to apache tomcat [java based application service --> uses nfs] --> 
RabbitMQ[Message Broker/Queuing Agent --> connects 2 applications and we can stream the data from this] --> 
Request goes to MemCached before going to mysql [database cache connected with mysql server : just like cache of mysql server] --> mysql server