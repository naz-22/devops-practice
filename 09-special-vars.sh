#/bin/bash
#--------- speacial variables & their descprition -----#

#--> $@ -->reads the all variables passed to the script.
echo "all variables passed to the script: $@"  

#--> $# -->reads the count of variables passed to the script.
echo "Number of  variables passed : $#" 

#--> $0 -->reads the name of  your  script.
echo "script name : $0"

#--> $PWD --> reads the present working directory you're in.
echo "current working directory : $PWD"

#--> $HOME--> reads the home directory of the current user who's running the script.
echo "Home directory of current script user: $HOME"

#--> $$--> reads the process instance id(PID) of the current script you're running.
echo "PID of current script : $$"

sleep 100 &
#--> $!--> reads the process instance id(PID) of the background command you've  runned.
echo "PID of the background command: $!"


