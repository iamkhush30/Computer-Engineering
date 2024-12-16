#creat a sell script to print sum of digit
echo "Enter n:"
read n
while [ $n -ne 0 ]
do
	a=`expr $n % 10`
	s=`expr $s + $a`
	n=`expr $n / 10`
done
echo $s