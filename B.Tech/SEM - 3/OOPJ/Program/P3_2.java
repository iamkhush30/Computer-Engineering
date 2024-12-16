import java.util.*;

public class P3_2
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("n = ");
        int n = sc.nextInt();
        
        if(n%2==0)
            System.out.println("Even");
        else
            System.out.println("Odd");
    }
}