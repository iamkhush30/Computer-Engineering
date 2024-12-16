mkdir main
cd main


echo "Hello" > f1.txt


echo "Hey" > f2.txt


mkdir s1
cp f2.txt ./s1/hello.txt


mkdir s2
cd s2

mkdir a1
cd a1

read f3
echo "$f3" > f3.txt
mv f3.txt ./..