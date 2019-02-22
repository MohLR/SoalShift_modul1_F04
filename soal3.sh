#!/bin/bash

i=1
while [ -f password$i.txt ]
do
	let i=$i+1
done
head /dev/urandom | tr -cd [:alnum:] | head -c 12 > password$i.txt
