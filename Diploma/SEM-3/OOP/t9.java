import java.util.*;
class p
{
	public static void main(String[] args) 
	{
		int n,i,m;
		Scanner s1 = new Scanner(System.in);
		n = s1.nextInt();
		for(i=0;n!=0;i++)
		{
			m = n%10;
			System.out.println(m);
			n=n/10;
		}	
	}
}