import java.io.*;
import java.util.*;
class t22
{
	public static void main(String args[]) 
	{
		String s2 = "Darshan University";
		String s1 = "Darshan University";

		/*---------------------------------------------------------------------------*/

		System.out.println("Char AT ="+s1.charAt(3));

		/*---------------------------------------------------------------------------*/

		int n = s1.compareTo(s2);
		if(n==0)
			System.out.println("Strings are same");
		else
			System.out.println("Strings are not same");

		/*---------------------------------------------------------------------------*/

		int m = s1.compareToIgnoreCase(s2);
		if(m==0)
			System.out.println("Strings are same");
		else
			System.out.println("Strings are not same");

		/*---------------------------------------------------------------------------*/

		System.out.println("Equals = "+s2.equals(s1));

		/*---------------------------------------------------------------------------*/

		System.out.println("Length = "+s1.length());

		/*---------------------------------------------------------------------------*/

		s1 = s1.concat(" Diploma");
		System.out.println("Concat = "+s1);

		/*---------------------------------------------------------------------------*/
		
		String z = new String("123-456-789-0");
		String[] s = z.split("-");
		System.out.println("Split = ");
		for(String q : s)
		{
			System.out.println("\n"+q);
		}

		/*---------------------------------------------------------------------------*/

		Scanner sc = new Scanner(System.in);
		String a = sc.nextLine();
		StringBuffer b = new StringBuffer("ABC");
		System.out.println("Content Equals = "+a.contentEquals(b));

		/*---------------------------------------------------------------------------*/
		
		System.out.println("Lower case = "+s1.toLowerCase());

		/*---------------------------------------------------------------------------*/
		
		System.out.println("Upper case = "+s1.toUpperCase());		

		/*---------------------------------------------------------------------------*/

		System.out.println("To String = "+s1.toString());

		/*---------------------------------------------------------------------------*/

		System.out.println("Trim = "+s1.trim());

		/*---------------------------------------------------------------------------*/

		String x = sc.nextLine();
		System.out.println("Is Empty = "+x.isEmpty());
	}
}