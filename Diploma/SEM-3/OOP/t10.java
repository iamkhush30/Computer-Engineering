import java.util.*;
class t10
{
	public static void main(String[] args) 
	{
		int n,i,j,m=0;
		Scanner s1 = new Scanner(System.in);
		n = s1.nextInt();
		for(i=1;i<=n;i++)
		{
			m=0;
			for(j=1;j<=i;j++)
			{
				if(i%j==0)
				{
					m = m + 1;
				}
			}
			if(m==2)
			{
				System.out.println(i);
			}
		}
	}
}