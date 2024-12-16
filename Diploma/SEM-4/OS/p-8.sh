#create shell script to chack if given number is pos or neg
echo "Enter a:"
read a
if [ $a -gt 0 ]
then
	echo "$a is positive"
else
	echo "$a is negative"
fi