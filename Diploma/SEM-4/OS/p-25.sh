echo "Enter a:"
read a
echo "Enter b:"
read b

select i in "+" "-" "\*" "/" "%" "exit"
do
	case $i in
		"+") echo $((a + $b));;
		"-") echo `expr $a - $b`;;
		"\*") echo `expr $a \* $b`;;
		"/") echo `expr $a / $b`;;
		"%") echo `expr $a % $b`;;
		"exit") exit;;
	esac
done