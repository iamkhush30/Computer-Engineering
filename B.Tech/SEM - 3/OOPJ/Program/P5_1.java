import java.util.*;

class P5_1
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String:");
        String x = sc.next();

        char[] strArr = x.toCharArray();

        for(int  i=1 ; i<strArr.length+1 ; i++)
        {
            for(int  j=0 ; j<i ; j++)
            {
                System.out.print(strArr[j]);
            }
            System.out.println();
        }
    }
}