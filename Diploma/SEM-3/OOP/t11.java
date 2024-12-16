import java.util.*;
class t11
{
	public static void main(String args[]) 
	{
		int n,i,m,a=0,sum;
		Scanner s1 = new Scanner(System.in);
		sum = s1.nextInt();
		n=sum;
		for(i=0;n!=0;i++)
		{
			m = n % 10;
			a = a + (m * m * m);
			n=n/10;
		}
		if(sum==a)
		{
			System.out.println("Entered number is Amstrong");
		}
		else
		{
			System.out.println("Entered number is not Amstrong");
		}
	}
}