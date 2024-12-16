#create shell script to chack if given year is leap year or not  
echo "Enter a:"
read a
ans1=`expr $a % 400`
ans2=`expr $a % 4`
ans3=`expr $a % 100`
if [ $ans1 -eq 0 ] || [ $ans2 -eq 0 -a $ans3 -ne 0 ]
then
	echo "$a is leap year"
else
	echo "$a is not leap year"
fi