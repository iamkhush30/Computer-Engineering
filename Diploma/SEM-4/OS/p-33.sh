#create a shell script to find number of charctar lines and words of given 
#input file

echo "Enter file:"
read file
wc -c $file
wc -w $file
wc -l $file
