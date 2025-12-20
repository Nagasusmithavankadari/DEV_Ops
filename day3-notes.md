**Linux:**

It is an open source



**Principles:**

Linux consider everything as a file\[including hardware like keyboard, mouse etc] which have been connected]

Config data will be stored in a file 



**Architecture:**

Hardware --> on top of it kernel --> on top of it shell\[from shell we will execute the commands where we could get output] --> on top of it applications/compilers/user interface



**Linux distributions:**

ubuntu, mint, fedora, arch, Debian, openSUSE --> for desktop

rhel\[not open source], ubuntu server, centos, suse enterprise Linux --> for servers





**Types of files:** 

normal file

directory

link --> symlink,

special file --> special mechanism files which are link in /dev

socket --> provides inter-process networking protected by file system's access control

pipe --> allows processes to communicate without using networking socket semantics.



**Filters and Re-directions:**

grep

pipe

head

tail

more

less

> --> overwrites

>> --> appends

n>>:

&nbsp;	1>> --> standard output --> default value
	2>> --> ignores standard error

\&>> --> whether it is error or standard output it will be written

|

%s

find



**Users and groups:**
every user will have specific uid

User info is stored in /etc/passwd

Group info is stored in /etc/group

user password is stored in /etc/shadow

**Types of Users:**
	regular: any user, userid/groupid: 1000-6000, homedir: /home/<username>, shell: /bin/bash

&nbsp;	root : root, userid/groupid: 0, homedir: /root, shell: /bin/bash

&nbsp;	service: ftp, ssh, apache, userid's/groupids: 1-999, homedir: /var/ftp etc, shell: /sbin/nologin

Syntax of /etc/password:
<username>: <link\_to\_/etc/password> exists or not: userid: groupid: <comment>: homedir: shell



Sudo:

To execute any command as root user from normal user--> but that normal should be part of sudoers file\[file which have list of users who could execute the sudo commands without switching as root] .

sudo yum install --> without being part of sudoers file --> will get error.

To add the user:

vi sudoers.d --> can't be opened in write mode --> to edit it --> visudo --> add the user under the section: allow root to run any commands anywhere --> save the file

If you add any invalid date in visudo --> then it will throw prompt with the line number --> so press e --> to fix the error in the file.



To switch to root user: sudo su - or sudo -i 



**Package Management:**

To install any package in Linux.

a. wget <url> --> to download from browser --> post that rpm -ivh <package\_name>  --> to install it

b. curl <url> -o <package\_name> --> post that rpm -ivh <package\_name>

c. dnf install <package\_name> --> but this will install the packages which are defined in yum.repos.d file 

d. To add repo in yum.repos.d --> download the repo using wget --> import key using rpm \[if needed]--> then upgrade yum --> install the package



**Services:** 

**Processes:**

top --> to list all the processes running, shows load average --> shows the cpu wait time, uptime, 

pid, user, priority name, nice value, virtual memory



**Archiving:**

To archive dir: tar -cvzf <archive\_name> <destination\_path>

&nbsp;	c: create

&nbsp;	z: compress

&nbsp;	v: verbose

&nbsp;	f: file

To unarchive: tar -xvzf <tar\_name> or tar -xvzf <tarname> -C <dest\_path>

To Zip a file: zip -R <zip\_name> <filename>

To unzip a file: unzip -R <zip\_name>

















































































































































































































































&nbsp;	

