import java.util.*;

class P2_4
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Fahrenheit = ");
        double f = sc.nextDouble();
        double c = f-32*(5/9);

        System.out.println("Celsius = "+c);
        
        System.out.println("Fahrenheit = "+(c*(9.0/5)+32));
    }
}