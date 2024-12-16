import java.util.*;

class P11
{
    public static void main(String[] args)
    {
        System.out.print("N = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int ans = 0 ;
        for(int i=1; i<=n ; i++)
        {
            int temp = 0;  
            for(int j=1; j<=i; j++)
            {
                temp = temp + j;
            }
            ans = ans + temp;
        }
        System.out.println(ans);
    }
}