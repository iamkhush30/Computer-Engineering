import java.util.*;

class P3_3
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

        double ans = a > b ? (a>c?a:c) : (b>c?b:c);
        System.out.println("MAX = "+ans);
    }
}