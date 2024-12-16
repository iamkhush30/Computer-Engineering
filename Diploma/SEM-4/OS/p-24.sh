echo "Enter N:"
read n
temp1=$n
temp2=$n
l=0
x=0
sum=0

while $((temp1 > 0))
do
	l=`expr $l + 1`
	temp1=`expr $temp1 / 10`
done


while $((n > 0))
do
	x=`expr $n % 10`
	sum=$((sum + x ** l))
	n=`expr $n / 10`	
done
if ((temp2 == sum)) 
then
	echo "Armstrong"
else
	echo "not Armstrong"
fi