#!/bin/bash
#this program takes STDIN and turns all uppercase and lowercase letters into A and B, removes spaces and all non alphabet characters. 

data=$(cat)
echo ""
echo "Uppercase = A,	Lowercase = B"
echo "---------------------------------------"
echo $data | sed 's/[A-Z]/A/g' | sed 's/[a-z]/B/g' | sed 's/ //g'| sed "s/[^AB]//g"
echo ""
echo "Uppercase = B,	Lowercase = A"
echo $data | sed 's/[A-Z]/B/g' | sed 's/[a-z]/A/g' | sed 's/ //g'| sed "s/[^AB]//g"

