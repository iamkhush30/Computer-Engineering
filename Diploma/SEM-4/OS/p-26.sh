echo "Enter digit:"
read n
x=0
rev=0
while [ $n -ne 0 ] 
do
	x=`expr $n % 10`
	n=`expr $n / 10`
	rev=`expr $rev \* 10 + $x`
done
echo $rev