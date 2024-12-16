echo "Eter n:"
read n
a=0
echo $a
b=1
echo $b
c=0
while [[ $x -lt $n ]] 
do
	c=`expr $a + $b`
	echo $c
	a=$b
	b=$c
	x=`expr $a + $b`
done