#creat a sell script to check if entered number is prime or not 
echo "Enter n:"
read n
i=1
sum=0
while [ $i -le $n ]
do
	if [ `expr $n % $i` -eq 0 ]
	then
		sum=`expr $sum + 1`
	fi
	i=`expr $i + 1`
done

if [ $sum -eq 2 ] 
then	
	echo "$n is Prime"
else
	echo "$n is not prime"
fi