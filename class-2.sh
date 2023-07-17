#!/bin/bash

expr 300 - 200
expr 300 + 300
expr 30 / 5
expr 100 \* 4

variableOne=100
variabletwo=20

expr $variableOne + $variabletwo  

echo $variableOne -- $variabletwo

count=10
if [ "$count" -eq 10 ]; then
  echo "Count is 10"
fi


mynum=200

if [ $mynum -eq 200 ]; then 
    echo "The condition is true $mynum"
fi

if [ $mynum -eq 260 ]; then
    echo "This condition is false"
fi


if [ $mynum -eq 200 ]; then 
    echo "The condition is true"
else 
    echo "This condition is false"
fi


command=/usr/bin/htop
if [ -f $command ]; then
 echo "the command is available $command"
else
    echo "the command is not available ,install it......"
fi



command2=htop
if [ command -v $command2 ]; then
 echo "$command2 the command is available"
else
  echo "$command2 is not available"
  sudo apt update && sudo apt install -y $command2
fi

echo  "cheak the packgae install item"
package=htop
sudo apt install $package
echo "The exit code for the package install is :  $? "

if [ $? -eq 0 ]; then
echo " the package is installed successfully"
echo "the new commnad are aviable here"
which $package
else
echo "$package failed to insatll"
fi

directory=/etc
if [ -d $directory ]; then
 echo "the directory exists"
else
echo "$directory doesnt exit"
fi

echo "The exit code for this script run is $?"
echo $directory

directory=/notexit
if [ -d $directory ]; then
 echo "the directory exists"
else
echo "$directory doesnt exit"
fi

echo "The exit code for this script run is $?"
echo $directory

