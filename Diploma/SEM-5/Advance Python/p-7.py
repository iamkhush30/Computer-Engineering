a = int(input("Enter year:"))

if(a%400==0):
	print(a," is leap year")

elif(a%100!=0 and a%4==0):
	print(a," is leap year")

else:
	print(a," is not leap year")