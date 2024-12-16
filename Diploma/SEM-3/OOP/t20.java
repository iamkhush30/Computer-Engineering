import java.util.*;
class t20
{
	public static void main(String[] args) 
	{
		int i,j,a[][];
		Scanner s1 = new Scanner(System.in);
		a = new int[3][3];
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				a[i][j] = s1.nextInt();
			}
		}
		for(i=0;i<3;i++)
		{
			for(j=0;j<3;j++)
			{
				System.out.println("a["+i+"]["+j+"] = "+a[j][i]);
			}
		}
	}
}