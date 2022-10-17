#search_function
#!/bin/sh
echo -n "What field would you like to search: \n\tname,
street, city, state, zip, or phone: "
read field
echo -n "In the field = \"$field\", enter the string you want
to find"
read string
case $field in
"name" )
awk -v var=$string -F ";" '$1 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less

# result=`awk -F ";" '{printf "%d: %s\n", NR, $1}'

$BOOK | grep -i $string | \

#awk -F ":" '{print $1}' `

;;
"street" )
awk -v var=$string -F ";" '$2 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less
;;
"city" )
awk -v var=$string -F ";" '$3 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less
;;
"state" )
awk -v var=$string -F ";" '$4 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less
;;
"zip" )
awk -v var=$string -F ";" '$5 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less
;;
"phone" )
awk -v var=$string -F ";" '$6 ~ var {printf "Record:
%d\n\t%s\n\t%s\n\t%s, %s, %s\n\t%s\n", NR, $1, $2, $3, $4, $5,
$6}' $BOOK | less
;;
"*" )
echo "incorrect field name";

;;
esac
echo -n "Press q to quit search menu"
exit 0
