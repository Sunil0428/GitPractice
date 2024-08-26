#!/bin/bash

User=$(id -u)

if [ $User -ne 0 ]

Then

   echo "you cant install as you dnt have req priviliges" 
  fi