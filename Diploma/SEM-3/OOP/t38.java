import java.util.*;
class A
{
	int n;
}
class B extends A
{
	void leap_year(int x)
	{
		n = x;
	}
}
class C extends B
{
	void ans()
	{
		if(n % 4 == 0)
		{
		    if(n % 100 == 0)
		    {
		    	if(n % 400 == 0)
		    		System.out.println(n+" is leap year");
		    	else
		    		System.out.println(n+" is not leap year");
		    }
		    else
		    	System.out.println(n+" is leap year");
		}
		else
		    System.out.println(n+" is not leap year");
	}
}

class t38 
{
	public static void main(String[] args) 
	{
		Scanner s1 =new Scanner(System.in);
		System.out.println("Enter Year :");
		int n = s1.nextInt();
		C c1 = new C();
		c1.leap_year(n);
		c1.ans();
	}
}
