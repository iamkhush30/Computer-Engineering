import java.util.*;

class P3_4
{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("A = ");
		int n = sc.nextInt();
		int count = 0;

		for (int i=2; i<n ; i++ ) 
		{
			if(n%i==0)
				count++;	
		}
		if(count==0)
			System.out.print(n+" is Prime");
		else
			System.out.print(n+" is not Prime");
	}
}