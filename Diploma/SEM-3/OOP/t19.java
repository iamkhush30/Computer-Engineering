import java.util.*;
class t19
{
	public static void main(String[] args) 
	{
		int i,j,k,a[][],b[][],c[][];
		Scanner s1 = new Scanner(System.in);
		a = new int[3][3];
		b = new int[3][3];
		c = new int[3][3];
		System.out.println("Enter first element:");
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				a[i][j] = s1.nextInt();
			}
		}
		System.out.println("Enter second element:");
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				b[i][j] = s1.nextInt();
			}
		}
		System.out.println("Multi :\n");
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				for(k=0;k<3;k++)
				{
					c[i][j] = c[i][j] + (a[i][k] * b[k][j]);
				}
			}
		}
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				System.out.println(+c[i][j]);
			}
		}
	}
}