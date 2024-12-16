echo "enter a:"
read a
echo "enter b:"
read b
echo "enter operator"
read o

ans=`expr $a $o $b`
echo "ans = $ans"