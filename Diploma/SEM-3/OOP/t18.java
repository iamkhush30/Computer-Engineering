import java.util.*;
class t18
{
	public static void main(String[] args) 
	{
		int i,j,a[][],b[][];
		Scanner s1 = new Scanner(System.in);
		a = new int[3][3];
		b = new int[3][3];
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
		System.out.println("Addition \n:");
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				System.out.println(+(a[i][j]+b[i][j]));
			}
		}
	}
}