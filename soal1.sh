#!/bin/bash

for i in nature/*.jpg
do
	base64 -d $i | xxd -r > nomor1/$i
done
