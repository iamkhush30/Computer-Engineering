import java.util.*;
class t46
{
	public static void main(String[] args) 
	{
		int a=1000,w;
		Scanner s1 = new Scanner(System.in);
		try
		{
			System.out.println("Enter amount :");
			w = s1.nextInt();
			int x = a-w;
			if(x < 500)
			{
				throw new Exception("must have 500 rs in your account");
			}
			else
			{
				a = x;
				System.out.println("Balance after withdraw :"+a);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
}