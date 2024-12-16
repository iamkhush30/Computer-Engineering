import java.util.*;
class t12
{
	public static void main(String args[]) 
	{
		int n1,n2,i,j,n,m,a=0;
		Scanner s1 = new Scanner(System.in);
		n1 = s1.nextInt();
		n2 = s1.nextInt();
		for(i=n1;i<=n2;i++)
		{
			n = i;
			a=0;
			for(j=0;n!=0;j++)
			{
				m = n % 10;
				a = a + (m * m * m);
				n=n/10;
			}
			if(a==i)
			{
				System.out.println(i);
			}
		}
	}
}