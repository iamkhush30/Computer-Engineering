#create a sell script to find min number out of three number
echo "Enter a:"
read a
echo "Enter b:"
read b
echo "Enter c:"
read c

if [ $a -lt $b ] && [ $a -lt $c ]
then
	echo "$a is min"
elif [ $b -lt $a ] && [ $b -lt $c ]
then
	echo "$b is min"
else
	echo "$c is min"
fi