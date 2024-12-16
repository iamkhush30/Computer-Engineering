import java.util.*;

class P4
{
    public static void main(String[] args)
    {
        System.out.print("N = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int ans = 1;
        while(n!=0)
        {
            ans = ans * n;
            n -= 1;
        }
        System.out.print("Factorial = "+ans);
    }
}