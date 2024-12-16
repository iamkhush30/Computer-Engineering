import java.util.*;

class P1
{
    public static void main(String[] args)
    {
        System.out.print("r=");
        Scanner sc = new Scanner(System.in);
        double r = sc.nextDouble();
        double area = Math.PI*r*r;
        System.out.print(area);
    }
}