****Command Line Arguments:****
$0 --> file name
$1-$9 --> 9 arguments to the bash script
$# --> how many arguments were passed to the bash script
$? --> Exit status of lastly run process --> 0 --> success, non-zero --> some error
$@ --> all the arguments supplied to the script
$$ --> process id of the current script
$USER --> username of the user who is currently running the script
$HOSTNAME --> hostname of the machine of which the script is running
$SECONDS --> no.of seconds since the script started
$RANDOM --> to generate the randomn number[0-32767]
$LINENO --> returns the current line no in the script


***Quotes and Command Subsitution : ***
'' --> could be used to assign the value to the variable --> but cannot be used a variable in the echo statement
"" --> could be used to assign the value to the variable --> in addition to that in echo it works as variable
ex:
 name='nagasusmitha'
[root@localhost ~]# echo $name
nagasusmitha
[root@localhost ~]# nam="nagasusmitha"
[root@localhost ~]# echo $nam
nagasusmitha
[root@localhost ~]# echo "My name is $name or $nam"
My name is nagasusmitha or nagasusmitha
[root@localhost ~]# echo 'My name is $name or $nam'
My name is $name or $nam

if you could see if used single quote it is considering $ aswell as echo statement


**To Print $ as print statment use "\":**
echo "My name is $name or $nam earns \$9 million"
My name is nagasusmitha or Susmitha earns $9 million


***Command Substitution:***
Two ways:
free_mem=$(free -m | grep -i mem | awk '{print $4}')
load=`uptime | awk '{print $8}' `
root_vol=$(df -h | grep "/dev/sda2" | awk '{print $2}') 


To Set variable value permanently to user level:
    1. Go to user home directory
    2. source .bashrc
    3. vi .bashrc
    4. Add the value of variable: exxport var="value"
    5. save and reboot the server

To set the variable permanently at global level:
    1. navigate to /etc/
    2. vi /profile
    3. Add the value of variable: exxport var="value"
    4. save and reboot the server

To set the variable temporarily till the session available:
export var="value"
and use it anywhere using $var

To read input from user: read <varname> and use it like a variable: read -p --> -p prompt,  use -s --> secret


***Decision Making:***
if [ <condition> ]
then
<commands>
elif [ <condition> ]
then
<commands>
....
...
else
    <commands>
fi

Few operators: 
! --> negation 
-n string --> length of string is >0
-z string --> length of the string is 0
string1 = string2 --> string1 is equal to string 2
string1 != string2 --> string1 is not equal to string2
interger -eq interger2 --> integer1 is equal to integer2
interger -gt interger2 --> integer1 is greater to integer2
interger -lt interger2 --> integer1 is less to integer2
-d File --> File exists and is a directory
-e File --> File exists
-r File --> File exists and read permissions has been granted
-x file --> file exists and execute permissions has been granted
-w file --> file exists and write permissions has been granted
s file --> file exists and non empty file


***Crontab:***
Minute Hour Date_of_Month Month day_of_week command
day_of_week:
0 - sun
1- sun....

***Loops:***
for var in <list>
do
<commands>
done
