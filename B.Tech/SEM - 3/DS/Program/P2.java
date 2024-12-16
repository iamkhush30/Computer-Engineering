import java.util.*;

class P2
{
    public static void main(String[] args)
    {
        System.out.print("A =");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        if(a%2==0)
            System.out.print("Even");
        else
            System.out.print("ODD");
    }
}