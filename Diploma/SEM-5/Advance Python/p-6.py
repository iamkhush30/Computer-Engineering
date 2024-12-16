a = int(input("Enter a:"))
b = int(input("Enter b:"))
c = int(input("Enter c:"))

if a>b:
	if a>c:
		print(a," is max")
	else:
		print(c," is max")
else:
	if b>c:
		print(b," is max")
	else:
		print(c," is max")