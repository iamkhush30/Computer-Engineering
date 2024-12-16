n = int(input("Enter Unit:"))

if( n > 0 and n <= 50):
	a = n * 2.6
	print("Rs. ",a)

elif( n > 50 and n <= 100 ):
	a = 50 * 2.6
	b = n - 50
	c = b * 3.25
	print("Rs. ",a+c)

elif(n > 100 and n <= 200):
	a = 50 * 2.60
	b = 50 * 3.25
	c = n - 100
	d = c * 5.26
	print("Rs. ",a+b+d)

else:
	a = 50 * 2.6
	b = 50 * 3.25
	c = 100 * 5.26
	d = n - 200
	e = d * 8.45
	print("Rs. ",a+b+c+e)
