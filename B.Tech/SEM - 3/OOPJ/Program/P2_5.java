import java.util.*;

class P2_5
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("A = ");
        double a = sc.nextDouble();
        System.out.print("B = ");
        double b = sc.nextDouble();
        System.out.print("C = ");
        double c = sc.nextDouble();

        // double ans = a > b ? (a>c?a:c) : (b>c?b:c);
        // System.out.println("MAX = "+ans);


        if(a>b)
        {
            if(a>c)
                System.out.println("MAX = "+a);
            else
                System.out.println("MAX = "+c);
        }
        else
        {
            if(b>c)
                System.out.println("MAX = "+b);
            else
                System.out.println("MAX = "+c);
        }

        if(a>b && a>c)
            System.out.println("MAX = "+a);
        else if(b>c)
            System.out.println("MAX = "+b);
        else
            System.out.println("MAX = "+c);



        
    }
}