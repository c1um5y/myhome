#!/bin/bash

for file in $@
do
	new_name=`echo $file | tr '(' '_' | tr ')' '_' | tr ' ' '_' | tr '[A-Z]' '[a-z]'`
	echo $new_name
done
