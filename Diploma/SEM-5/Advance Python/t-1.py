a = float(input("Enter a:"))
b = float(input("Enter b:"))
c = float(input("Enter c:"))

if (a == b and a == c):
	print("a,b,c are same")

if (a == b and a > c):
	print("a,b are max")

if (a == c and a > b):
	print("a,c are max")

if (c == b and c > a):
	print("c,b are max")

if (a > b and a > c):
	print("a is max")

if (b > a and b > c):
	print("b is max")

if (c > b and c > a):
	print("c is max")