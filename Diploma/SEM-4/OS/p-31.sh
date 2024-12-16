#create a shell script to convert string from lower case to upper case
echo "Enter Str:"
read str
echo $str | tr [:lower:] [:upper:] 