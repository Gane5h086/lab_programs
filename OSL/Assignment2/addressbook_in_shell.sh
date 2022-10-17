#!/bin/sh
BOOK="address-book2.txt"
export BOOK
exit=0
while [ $exit -ne 1 ]
do
clear
echo "WELCOME TO ADDRESSBOOK PROGRAM"
echo "=============================="
echo "What operation do you want to do?"
echo "1)add, 2)list, 3)find, 4)delete, 5)exit: "
read answer

if [ "$answer" = 1 ]
then
./add2.sh
elif [ "$answer" = 2 ]
then
./list2.sh
elif [ "$answer" = 3 ]
then
./find2.sh
elif [ "$answer" = 4 ]
then
./del2.sh
elif [ "$answer" = 5 ]
then
exit=1
else
echo "invalid command. please enter correct command"
sleep 5
fi
done
exit 0
