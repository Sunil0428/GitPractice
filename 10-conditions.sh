#!/bin/bash

echo "please enter a number"
read x

if [ $x -gt 20 ]
then
   echo "the entered number is greater than 20"
else
   echo "the entered number is less than 20"
fi