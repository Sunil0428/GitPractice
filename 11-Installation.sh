#!/bin/bash

User=$(id -u)

if [ $User -eq 0 ]
then
        echo "Both variables are the same"
else
        echo "Both variables are different"
fi