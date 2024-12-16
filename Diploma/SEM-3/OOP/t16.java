import java.util.*;
class t16
{
	public static void main(String[] args) 
	{
		int i,n,a[],even=0,odd=0;
		System.out.println("Enter size of array:");
		Scanner s1 = new Scanner(System.in);
		n = s1.nextInt();
		a = new int[n];
		System.out.println("Enter "+n+" element:");
		for(i=0;i<n;i++)
			a[i] = s1.nextInt();
		for(i=0;i<n;i++)
		{
			if(a[i]%2==0)
				even = even + 1;
			else
				odd = odd + 1;
		}
		System.out.println("even = "+even);
		System.out.println("odd = "+odd);
	}
}