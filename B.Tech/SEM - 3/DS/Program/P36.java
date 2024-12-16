import java.util.*;

class P36
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("celsius = ");
        double celsius = sc.nextInt();

        celsiustoFahrenhit(celsius);
    }

    static void celsiustoFahrenhit(double  a)
    {
        System.out.println(a+" celsius = "+(a+32*(5/9))+" Fahrenhit");
    }
}