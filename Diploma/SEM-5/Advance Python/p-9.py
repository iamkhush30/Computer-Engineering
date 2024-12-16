a = float(input("Enter A:"))
b = float(input("Enter B:"))
print("1 for Add")
print("2 for Sub")
print("3 for Mul")
print("4 for Div")
print("5 for Mod")
c = int(input("Enter your choise:"))

if(c == 1):
	print("Ans = ",(a+b))
elif(c == 2):
	print("Ans = ",(a-b))
elif(c == 3):
	print("Ans = ",(a*b))
elif(c == 4):
	print("Ans = ",(a/b))
elif(c == 5):
	print("Ans = ",(a%b))
else:
	print("False value")
