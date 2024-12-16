#create shell script to chack if given number is odd or even
echo "Enter a:"
read a
ans=`expr $a % 2`
if [ $ans -eq 0 ]
then
	echo "$a is even"
else
	echo "$a is odd"
fi