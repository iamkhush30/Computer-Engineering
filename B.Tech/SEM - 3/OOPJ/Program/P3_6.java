import java.util.*;

class P3_6
{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("N = ");
		int n = sc.nextInt();
		int x=0,a,temp=n;
		while(n > 0)
		{
			a = n % 10;
			int i=0;
			while(i>=0)
			{
				x = x * 10;
				i--;
			}
			x += a;
			n /= 10;  
		}
		if(temp==x)
			System.out.print(temp+" is Palindrom");
		else
			System.out.print(temp+" is not Palindrom");
	}
}