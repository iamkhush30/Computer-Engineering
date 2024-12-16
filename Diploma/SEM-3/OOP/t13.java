import java.util.*;
class t13
{
	public static void main(String[] args) 
	{
		int i,n,a[];
		System.out.println("Enter size of array:");
		Scanner s1 = new Scanner(System.in);
		n = s1.nextInt();
		a = new int[n];
		System.out.println("Enter "+n+" element:");
		for(i=0;i<n;i++)
			a[i] = s1.nextInt();
		for(i=0;i<n;i++)
			System.out.println("a["+i+"] = "+a[i]);
	}
}