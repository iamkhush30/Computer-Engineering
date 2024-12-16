import java.util.*;

class P33
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("a = ");
        int a = sc.nextInt();
        System.out.print("b = ");
        int b = sc.nextInt();

        Swap(a, b);
    }

    static void Swap(int a,int b)
    {
        System.out.println("Befor Swapping");
        System.out.println("A = "+a);
        System.out.println("B = "+b);

        int swap = a;
        a = b;
        b = swap;

        System.out.println("After Swapping");
        System.out.println("A = "+a);
        System.out.println("B = "+b);
    }
}