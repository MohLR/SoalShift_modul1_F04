#!/bin/bash

i=1
string=password$i.txt
while [ -f password$i.txt ]
do
	let i=$i+1
	string=pasword$i.txt
done
head /dev/urandom | tr -cd [:alnum:] | head -c 12 > password$i.txt
