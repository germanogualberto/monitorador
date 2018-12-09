#!/bin/bash
LOG='commands.log'
TIME='/usr/bin/time -po tmp '

read comando
#echo $comando
$TIME $comando

#cat tmp
time_sys=$(grep "sys" tmp | cut -d' ' -f2 )
time_user=$(grep "user" tmp | cut -d' ' -f2 )
#user [ command ] mes/ano time_sys time_user
echo `whoami` [ $comando ] $(date '+%d/%b/%Y') $time_sys $time_user >> $LOG
