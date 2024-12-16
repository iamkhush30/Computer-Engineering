import java.util.*;

class P9
{
    public static void main(String[] args)
    {
        System.out.print("Enter seconds = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int h = n / 3600;
        int m = (n % 3600) / 60;
        int s = n % 60;

        System.out.println("Hour = "+h);
        System.out.println("Min = "+m);
        System.out.println("Sec = "+s);


    }
}