echo "Enter P:"
read p
echo "Enter R:"
read r
echo "Enter N:"
read n
ans=`expr $p \* $r \* $n / 100 `
echo "Ans = $ans"
