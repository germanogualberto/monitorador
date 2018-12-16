#!/bin/bash
LOG='commands.log'
TIME='/usr/bin/time -po tmp '

while true; do
echo `whoami`@`hostname`:`pwd`$ 
read comando
if [[ "$comando" == *"cd"* ]];then
echo `whoami` [ $comando ] $(date '+%d/%b/%Y') 0.00 0.00 >> $LOG
pwd
$comando
pwd
#cd ..
#pwd
else

#echo $comando
echo $comando | $TIME /bin/bash

#cat tmp
time_sys=$(grep "sys" tmp | cut -d' ' -f2 )
time_user=$(grep "user" tmp | cut -d' ' -f2 )
#user [ command ] mes/ano time_sys time_user
echo `whoami` [ $comando ] $(date '+%d/%b/%Y') $time_sys $time_user >> $LOG

#echo "`whoami`@`hostname`:`pwd`$ "
fi
done
