#create a shell script to reverce a string
echo "Enter Str:"
read str

len=`echo -n $str | wc -c`
rev=""
for ((i = len-1 ; i >= 0 ; i--))
do
	rev=$rev${str:$i:1}
done

echo $rev