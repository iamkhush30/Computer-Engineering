import java.util.*;
class average
{
	float a,b,c;
	float avg(float a,float b,float c)
	{
		return (a+b+c)/3;
	}
}
class t26
{
	public static void main(String[] args) 
	{
		float ans;
		average a1 = new average();
		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter three number:");
		a1.a = s1.nextFloat();
		a1.b = s1.nextFloat();
		a1.c = s1.nextFloat();
		ans = a1.avg(a1.a , a1.b , a1.c);
		System.out.println("Average = "+ans);
	}
}