echo "Enter N:"
read n
m=$n
x=0
rev=0

while [[ $n -ne 0 ]]
do
	x=`expr $n % 10`
	rev=`expr $x + $rev \* 10`
	n=`expr $n / 10`
done

if [[ $m -eq $rev ]]
then
	echo "$m is Palindrom"
else
	echo "$m is not Palindrom"
fi


