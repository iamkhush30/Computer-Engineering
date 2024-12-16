--1.
declare @a int=5
if(@a > 0)
   print'pos'
else
   print'neg'

--2.
declare @no1 int=5
declare @no2 int=6
if(@no1 > @no2)
   print'm is max'
else
   print'n is max'

--3.
declare @num1 int=5
declare @num2 int=6
declare @num3 int=2
if(@num1 > @num2 and @num1 >@num3)
   print'num1 is max'
else if(@num2 > @num3)
   print'num2 is max'
else
   print'num3 is max'

--4.
declare @x int=25
while(@x >= 1)
begin
	print(@x)
	set @x -= 1
end

--5.
declare @y int = 1
while(@y <= 100)
begin
	if(@y % 2 = 1)
		print(@y)
	set @y += 1
end

--6.
declare @z int = 1
declare @sum int = 0
while(@z <= 100)
begin
	set @sum += @z
	set @z += 1
end
print @sum
