#!/bin/bash

PYTHON_LINK="/usr/bin/python"

echo
echo "Current python link" `ls -la $PYTHON_LINK | cut -d" " -f10-11`
echo

PYTHON=`find /usr/bin -name python?`

echo "Available python binaries: "
num=1
for i in $PYTHON
do
    echo "$num -> $i"
    num=$(($num+1))
done

echo Selection:
read selection

regexp='^[0-9]+$'
if ! [[ $selection =~ $regexp ]]
then
    echo "Not a number"
    exit 2
fi

if [ $selection -gt $num -o $selection -lt 1 ]
then
    echo "Selection out of range"
    exit 1
fi

num=1
for i in $PYTHON
do
    if [ $num -eq $selection ]
    then
        selected=$i
        break
    fi
    num=$(($num+1))
done

sudo rm -rf $PYTHON_LINK
sudo ln -s $selection $PYTHON_LINK
