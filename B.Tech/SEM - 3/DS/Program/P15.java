import java.util.*;

class P15
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        Double sum = 0.0 ;
        for(int i=0 ; i<n ;i++)
        {
           sum += i+1;
        }
        System.out.println("Average of N num = "+(sum/n));

    }
}