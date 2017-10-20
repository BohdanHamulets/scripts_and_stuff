#!/bin/csh
while ( 1 )
	echo
	date
	grep "No such message" `ls -atr euq* | tail -n 10` | tail -n 5
	sleep 2
end
