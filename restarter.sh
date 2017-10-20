#!/bin/csh
while ( 1 )
	foreach i ( 1 2 3 4 5 6 7 8 9 )
		echo
		echo `date` 'down_no_force'
		/data/bin/heimdall_svc down_no_force hermes
		sleep 4
		echo `date` 'up'
		/data/bin/heimdall_svc up hermes
		sleep $i
	end
end
