#!/bin/bash

i=1
while [ -f password$i.txt ]
do
	let i=$i+1
done
pass= head /dev/urandom | tr -cd [:alnum:] | head -c 12
for password in ls password*.txt
do
	echo "$password"
	value = `cat "$password"`
	if [ $pass = $value ]
	then
		echo "Coba jalankan file lagi, sebelumnya password yang dihasilkan merupakan duplikat sehingga tidak terbuat file baru"
		break
	fi
done
if [ $pass != $value ]
then
	$pass > password$i.txt
fi
