import java.util.*;

class P10
{
    public static void main(String[] args)
    {
        System.out.print("Enter days = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int y = n / 365;
        int w = (n % 365) / 7;
        int d = (n % 365) % 7;

        System.out.println("Year = "+y);
        System.out.println("Week = "+w);
        System.out.println("Day = "+d);


    }
}