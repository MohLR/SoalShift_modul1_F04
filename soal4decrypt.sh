#!/bin/bash

for file in [012]*
do
	value=${file:0:2}
	alpha=$( printf "%s" {a..z} )
	part1=$( printf $(printf '\%03o' $(seq $((97+$value)) 122 ) ) )
	part2=$( printf $(printf '\%03o' $(seq 97 $((97+$value-1)) ) ) )
	Alpha=$( printf "%s" {A..Z} )
	Part1=$( printf $(printf '\%03o' $(seq $((65+$value)) 90 ) ) )
	Part2=$( printf $(printf '\%03o' $(seq 65 $((65+$value-1)) ) ) )
	sed -i y/$part1$part2/$alpha/ "$file"
	sed -i y/$Part1$Part2/$Alpha/ "$file"
done
