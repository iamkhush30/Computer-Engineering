select i in "odd | even" "factors" "exit"
do
	case $i in
		"odd | even")
			echo "Enter n:"
			read n
			if ((n % 2 == 0))
			then
				echo "$n is Even"
			else
				echo "$n is Odd"
			fi;;

		"factors")
			echo "Enter n:"
			read n
			i=1
			for (( i = 1; i <= n; i++ ))
			do
				if ((n % i == 0))
				then
					echo $i
				fi
			done;;

		"exit") exit;;
		*) echo "invelid value"
	esac
done