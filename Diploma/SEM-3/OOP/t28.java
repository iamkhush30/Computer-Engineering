import java.util.*;
class power
{
	int n;
	int a;
}
class t28
{
	public static void main(String[] args) 
	{
		int ans=1,i;

		power p1 = new power();

		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter base:");
		p1.a = s1.nextInt();
		System.out.println("Enter power:");
		p1.n = s1.nextInt();

		for(i=0;i<p1.n;i++)
		{
			ans *= p1.a;
		}
		System.out.println("ANS :"+ans);
	}
}