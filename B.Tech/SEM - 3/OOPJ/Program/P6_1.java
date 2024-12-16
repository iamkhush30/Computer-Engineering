import java.util.*;

class P6_1 
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("R = ");
        int r = sc.nextInt();

        Circle ci = new Circle();
        ci.area(r);
    }
}
class Circle
{
    void area(double r)
    {
        double area = 3.14 * r * r;
        System.out.println("Area = "+area);
    }
}