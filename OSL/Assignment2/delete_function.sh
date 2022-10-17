#delete_function
#!/bin/sh
echo -n "Enter the number of record to delete: "
read number

awk -v var=$number -F ";" 'NR ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK

echo -n "Is this the correct record to delete? (y/n): "
read answer

fixedanswer=`echo $answer | tr "A-Z" "a-z"`;
if [ "$fixedanswer" = "y" ]
then
mv $BOOK boo.txt
nl --number-format=rz --number-separator=":" boo.txt |
grep -v 0$number: | awk -F: '{print $2}' | tee $BOOK
else
echo "deletion operation canceled!!"
sleep 5
fi
