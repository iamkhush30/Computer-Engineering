import java.util.*;

class P6
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Base = ");
        int a = sc.nextInt();
        System.out.print("Power = ");
        int b = sc.nextInt();
        int ans = a;

        for(int i=0;i<b-1;i++)
        {
          ans = ans * a;
        }
        System.out.print("Ans = "+ans);
    }
}