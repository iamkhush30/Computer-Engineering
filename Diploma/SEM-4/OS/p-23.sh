echo "Enter N:"
read n
sum=1

while [[ $n -gt 0 ]]; 
do
	sum=`expr $sum \* $n`
	n=`expr $n - 1`
done

echo "Ans = $sum"