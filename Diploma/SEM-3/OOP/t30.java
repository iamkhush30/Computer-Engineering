import java.util.*;
import java.io.*;
class cube
{
	int l,a;
	void area(int l)
	{
		a = l;
		int ans = 6*l*l;
		System.out.println("Area of Cube = "+ans);
	}
}
class t30
{
	public static void main(String[] args) 
	{
		cube c1 = new cube();
		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter value of l :");
		c1.l = s1.nextInt();
		c1.area(c1.l);
	}
}