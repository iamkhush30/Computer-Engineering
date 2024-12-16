import java.util.*;

class P2_2
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("A = ");
        double a = sc.nextDouble();
        System.out.print("B = ");
        double b = sc.nextDouble();
        System.out.print("Operator = ");
        char operator = sc.next().charAt(0);
        switch (operator) {
            case '+':
                System.out.println("A + B = "+(a+b));
                break;
            case '-':
                System.out.println("A - B = "+(a-b));
                break;
            case '*':
                System.out.println("A * B = "+(a*b));
                break;
            case '/':
                System.out.println("A / B = "+(a/b));
                break;
            case '%':
                System.out.println("A % B = "+(a%b));
                break;
        
            default:
            System.out.println("Invalid Operator ");
                break;
        }
    }
}