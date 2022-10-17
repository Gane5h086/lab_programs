#add_function
#!/bin/sh
echo "\n ======== Creating New Entry =======\n\n"
echo -n "Name of person: "
read name
echo -n "===ENTER ADDRESS===\n\n"
echo -n "Street: "
read street
echo -n "City: "
read city

echo -n "State: "

read state
echo -n "Zip Code: "
read zip
echo -n "Phone number: "
read phone
echo "Confirm your inputs? "
echo -e " $name \n $street \n $city, $state, $zip \n $phone
\n"
echo -n "y/n: "
read answer

fixedanswer=`echo $answer | tr "A-Z" "a-z"`;
if [ "$fixedanswer" = "y" ]
then
echo "$name;$street;$city;$state;$zip;$phone" >>$BOOK
echo "Added the entries to the book"
sleep 5
else
echo -e " Operation canceled by user"
sleep 5
fi
exit 0
