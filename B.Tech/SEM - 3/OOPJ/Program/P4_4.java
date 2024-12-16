import java.util.*;

class P4_4
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String:");
        String x = sc.next();

        char[] strArr = x.toCharArray();


        for(int i=x.length()/2 ; i<x.length() ; i++)
        {
            System.out.print(strArr[i]);
        }
    }
}