# **Commands in Linux**



1\. To check os: /etc/os-release

2\. $ --> shows normal user , # --> root user

3\. cd /bin/ --> this path will have  normal user executable programs/functions, ex: yum, dnf, mv, pwd, whoami etc

4\. cd /sbin/ --> this path will have super user\[root user] executable programs, ex: mkfs.ext, lvrename etc

5\. cd /etc/ --> this path will have config files

6\. yum.conf --> its like Appstore/google playstore

7\. /boot/ --> boot configurations

8\. touch filename{1..30}.txt --> created 30 files with filename1, filename2, filename3,....till filename30.txt

9\. after vi filename :

 	:se nu --> shows the line numbers in the file

 	shift + g --> to reach the end line of the file

 	gg --> to reach the first line of the file

 	yy -> to copy that specific line in the file

 	p --> to paste below, P \[cap p] --> to paste above

 	to copy multiple lines sequentially --> go the first line which you wanted to copy --> nyy --> copies n lines from your cursor line

 	dd --> to delete the line \[like cut as well]

 	u --> to undo last change\[word], U\[cap u] --> to undo for line

 	ctrl+R --> to Redo the changes

 	ndd --> deletes n lines

 	w --> to move cursor word by word

 	b --> to move the cursor backward word by word

 	nw --> to move the cursor forward to n words

 	nb --> to move the cursor backward to n words

 	dw --> to delete the word letter by letter like backspace key

 	x --> to delete the word letter by letter like delete key

 	/ --> to search for any word in vi editor

10\. file <filename> --> gives info about file:
	crw-rw---- --> here 1st letter
		c --> character file
		b --> block file

&nbsp;		l --> link file

&nbsp;		- --> regular file

11\. To establish symbolic link: ln -s <source\_file\_path: to which you want to create link> <dest\_path: where it has to be linked, ex: desktop\[as shortcut will be here]>

12\. To unlink: unlink <dest\_path> or rm <dest\_path>

13\. Inputs and Redirections:
	To search data in the file: grep <keyword> <filename> 

&nbsp;		Use: -i --> to ignore case sensitive
		Use: \* --> to check in current directory without recursively
		Use: -R --> to check recursively in the current directory with \* as filename 

&nbsp;		Use: -v --> do not show that keyword 

&nbsp;	To View content of file fitting to the screen\[viewing less content of file]: less <filename> --> it is like a reader

&nbsp;		Use: / -->to search for content

&nbsp;		Use: q --> to quit the reader

&nbsp;		Use: up or down arrow to read the content of the file

&nbsp;	To View Content of file --> more <filename>

&nbsp;		Use: Enter to read contents --> shows in % way

&nbsp;		Use: q to quit

&nbsp;	To View first n lines: head -n <count> <filename> --> by default it is 10 i.e, head <filename> --> returns first 10 files

&nbsp;	To View last n lines: tail -n <count> <filename> --> by default it is 10 i.e, tail <filename> --> returns last 10 files

&nbsp;		Use: -f to read the dynamic data of last n lines, i.e, if the log entry changes, content which you are viewing of n lines will be changed accordingly.

&nbsp;	To View specific column in a file: cut -d: -f<n> <filename>: cut -d<delimiter-type> -f2 <filename> --> shows 2nd field\[column] in the file --> useful for /etc/passwd

&nbsp;		Use: Only when we have delimiters in the file 

&nbsp;	To View specific column in a file without delimiter: awk '{print $n}'

&nbsp;	To Replace contents in the file with another keyword:
		a. open file --> esc --> :%s/<keyword>/<new-word> --> replaces all the occurrences of keyword with new word however if a line has multiple times, replace only at the first 		occurrence

&nbsp;		b. To replace everywhere in the file: open file --> esc --> :%s/<keyword>/<new-word>/g --> to replace the keyword globally in the file

&nbsp;		c. Without opening the file you wanted to replace: 

&nbsp;			sed 's/<keyword>/<new-word>' --> act like option a

&nbsp;			sed 's/<keyword>/<new-word>/g' --> act like option b

&nbsp;			Use: \* to replace in all files in the current directory

&nbsp;			**Note: if you use sed and wanted the changes to be saved in the file use -i after sed: sed -i 's/<keyword>/<new\_word>/g' filename**



&nbsp;	**Note: Redirections to /dev/null --> it will be emptied like a black hole --> anything written to /dev/null is like empty only.**

14\. uptime --> to show uptime of the server

15\. free -m --> shows free memory \[swap memory as well]

16\. find <path\_to\_be\_searched> -name <file\_to\_be\_searched>

17\. id <username> --> Returns the userid, group id and groups it belongs to

18\. To add user to a group: usermod -aG <groupname> <username>

19\. last --> used to find the last users who have been logged in to the server and which time they lastly they logged in

20\. lsof -u <username> --> to list the opened files by username

21\. userdel <username> --> to delete the user but home directory still exists, to delete the user completely --> userdel -r <username>

22\. groupdel <groupname> --> to delete the group name

23\. To reset password myself: passwd and if root has to reset the password: passwd <username>

24\. Sudo: 

&nbsp;	To edit sudoers.d file --> to add user to execute command with sudo permission --> visudo

&nbsp;	To add group --> cd /etc/sudoers.d/  --> create file with user or groups or commands to be executed as sudo

25\. rpm -qa : To list all installed packages in the server for rhel based servers

26\. To find the type of your server architecture: arch or uname -m

27\. To install a package;
	1. curl <url> -o <package\_name>

&nbsp;	2. rpm -uvh <package\_name>

28\. wget <url> --> to download anything in Linux server

29\. To add repo in yum.repos.d --> download the repo using wget --> import using rpm --import --> then upgrade yum --> install the package

30\. To see the enabled info a service\[default service] : /etc/systemd/system/multi-user.target.wants/<service\_name>

31\. top --> to list processes just like task manager

32\. ps aux --> similar to top, but displays the processes and quits --> shows utilization as well

33\. ps -ef --> list all the processes and quits similar to ps aux but won't show the utiliation instead shows the parent process id

34\. kill -9 <pid> --> to kill a process forcefully, kill <pid> --> to kill a process

35\. To kill multiple processes \[by passing pid as parameter]: ps -ef | grep <pid> | awk '{print $<pid\_col>} | xargs kill -9

36\. To archive dir: tar -cvzf <archive\_name> <destination\_path>

 	c: create

 	z: compress

 	v: verbose

 	f: file

37\. To unarchive: tar -xvzf <tar\_name> or tar -xvzf <tarname> -C <dest\_path>

38\. To Zip a file: zip -R <zip\_name> <filename>

39\. To unzip a file: unzip -R <zip\_name>

40\. 




	

&nbsp;		





&nbsp;	

























































































































