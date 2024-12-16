import java.util.*;

class P3_5
{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Year = ");
		int n = sc.nextInt();

		if(n%100==0)
		{
			if(n%400==0)
				System.out.print(n+" is Leap Year");
			else
				System.out.print(n+" is not Leap Year");
		}
		else if(n%4==0)
			System.out.print(n+" is Leap Year");
		else
			System.out.print(n+" is not Leap Year");
	}
}