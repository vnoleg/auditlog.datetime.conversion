#!/bin/bash
#a=$(cat /var/log/audit/audit.log | tail -n1)
#b=$(echo $a | grep -Eo '[0-9]{10}\.[0-9]{3}')

#$echo 'normdate:'
#c=$(date -d @$b)
#$echo $c

#echo $a | sed -E "s/[0-9]{10}\.[0-9]{3}/$c/g"

for i in $(cat /var/log/audit/audit.log);
	do b=$(echo $i | grep -Eo '[0-9]{10}\.[0-9]{3}');
echo $b;
	c=$(date -d @$b);
echo $c;
	d-$(echo $i | sed -E "s/[0-9]{10}\.[0-9]{3}/$c/g");
echo $d;
	done  
