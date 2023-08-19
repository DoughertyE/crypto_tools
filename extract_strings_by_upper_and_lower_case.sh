#!/bin/bash
#This program will take text on STDIN and output versions of inputted text in only uppercase and in only lowercase
data=$(cat)

lowercase=$(echo $data | sed 's/[A-Z]//g')
uppercase=$(echo $data | sed 's/[a-z]//g')
lowercase_no_spaces=$(echo $lowercase | tr -d " ")
uppercase_no_spaces=$(echo $uppercase | tr -d " ")
lowercase_count=$(echo $lowercase_no_spaces | wc -m)
uppercase_count=$(echo $uppercase_no_spaces | wc -m)

echo "-------------------------------------"
echo $lowercase
echo ""
echo $lowercase_no_spaces
echo ""
echo $lowercase_count
echo "-------------------------------------"
echo $uppercase
echo ""
echo $uppercase_no_spaces
echo ""
echo $uppercase_count
