#!/bin/bash

nama=`date +"%H:%M %d-%m-%Y"`
jam=`date +"%H"`
cat /var/log/syslog > "$nama"
alpha=$( printf "%s" {a..z} )
part1=$( printf $(printf '\%03o' $(seq $((97+$jam)) 122 ) ) )
part2=$( printf $(printf '\%03o' $(seq 97 $((97+$jam-1)) ) ) )
Alpha=$( printf "%s" {A..Z} )
Part1=$( printf $(printf '\%03o' $(seq $((65+$jam)) 90 ) ) )
Part2=$( printf $(printf '\%03o' $(seq 65 $((65+$jam-1)) ) ) )
sed -i y/$alpha/$part1$part2/ "$nama"
sed -i y/$Alpha/$Part1$Part2/ "$nama"
