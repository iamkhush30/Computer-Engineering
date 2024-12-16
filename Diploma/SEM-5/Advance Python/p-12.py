a = int(input("Enter A:"))
b = int(input("Enter B:"))

for i in range(a+1,b):
	if(i%2==0 and i%3!=0):
		print(i)