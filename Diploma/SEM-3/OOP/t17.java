import java.util.*;
class t17
{
	public static void main(String[] args) 
	{
		int i,j,a[][];
		Scanner s1 = new Scanner(System.in);
		a = new int[3][3];
		System.out.println("Enter element:");
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
				System.out.println(+a[i][j]);
			}
		}
	}
}