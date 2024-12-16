import java.util.*;

class P14
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("M = ");
        int m = sc.nextInt();
        System.out.print("N = ");
        int n = sc.nextInt();
        int sum = 0;
        if(m>n)
        {
            System.out.println("Invalid input");
        }
        else
        {
            for(int i=m ; i<=n ;i++)
            {
                sum += i;
            }
            System.out.println("Sum of M to N:"+sum);
        }
    }
}