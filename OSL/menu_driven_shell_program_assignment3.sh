#!/bin/bash

calci(){
echo "enter number"
read a 
read b 
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case $ch in

1)((add = a + b))
echo Addition of given numbers = $add;;
2)((sub = a - b)) 
echo Subtraction of given numbers = $sub;;
3)((mul = a * b))
echo Multiplication of given numbers = $mul;;
4)((div = a / b))
echo Division of given numbers = $div;;
*) echo "invalid choice";;
  
esac
}


#palindrome

pali(){ 
echo "Enter a string"
read string

rvstr=`echo $string|rev`

echo "reverse of the string you've entered is: $rvstr"

if [ $string = $rvstr ];
then
echo "Given string is a palindrome"
else
echo "Given string is not palindrome"
fi
}

#factorial of a given number

fact(){
echo "Enter a number"
read num                     

fact=1                    

for((i=2;i<=num;i++))
{
  fact=$((fact * i)) 
}
echo "factorial of given number is" 
echo $fact
}

echo "Welcome" 
echo "1.Simple calculator"
echo "2.Palindrome"
echo "3.Factorial"
echo "Enter your choice"


read choice
case $choice in 

1)calci;;
2)pali;;
3)fact;;
*)echo "invalid choice. please enter correct choice";;

esac

