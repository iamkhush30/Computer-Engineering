import java.util.*;

class P3_7
{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("N = ");
		int n = sc.nextInt();
		System.out.print("M = ");
		int m = sc.nextInt();

		if(n<m)
		{
			for (int i=n ; i<=m ; i++ ) 
			{
				if(primeFunction(i) )
					System.out.println(i);
			}
		}
	}
	static boolean primeFunction(int n)
	{
		int count = 0;

		for (int j=1; j<=n ; j++ ) 
		{
			if(n%j==0)
				count++;	
		}
		if(count==2)
			return true;
		else
			return false;
	}

}