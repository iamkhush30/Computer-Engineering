#create a shell script to convert string from upper case to lower case
echo "Enter Str:"
read str
echo $str | tr [:upper:] [:lower:]