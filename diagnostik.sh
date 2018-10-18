#!/bin/bash

while ( 1 ) 
	date >> hermes_every_10min.log && top |grep hermes >> hermes_every_10min.log && echo "" >> hermes_every_10min.log && sleep 600
end
