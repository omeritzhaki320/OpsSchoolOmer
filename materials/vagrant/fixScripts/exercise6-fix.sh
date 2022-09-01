#!/bin/bash
LAST="${*:$#}"
ALL_BUT_LAST="${*:1:$#-1}"
exercise6(){
	if [[ $HOSTNAME == 'server1' ]]; then
		scp $ALL_BUT_LAST vagrant@server2:$LAST

	elif [[ $HOSTNAME == 'server2' ]]; then
		scp $ALL_BUT_LAST vagrant@server1:$LAST

	fi
	SIZE=0
	for i in $ALL_BUT_LAST; do 
	        SIZE=$(($SIZE + $(cat $i | wc -c)));
	        
	done
	echo $SIZE
}
exercise6
