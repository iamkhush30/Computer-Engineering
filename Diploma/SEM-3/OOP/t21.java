import java.io.*;
import java.util.*;
class t21
{
	public static void main(String args[]) 
	{
		int a=10;
		Integer s1 = new Integer (a);
		int b = s1.intValue();
		System.out.println(b);

		double x=12.45;
		Double s2 = new Double (x);
		double y = s2.doubleValue();
		System.out.println(y);

		int c = Integer.parseInt("123");
		System.out.println(c);
		String s3 = String.valueOf(c);
		System.out.println(s3);
	}
}