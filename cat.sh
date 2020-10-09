#!/bin/sh
args=""
for a in $@ 
do
	args="${args}<${a}"
done
eval "./echo"$args
