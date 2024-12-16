import java.util.*;

class P13
{
    public static void main(String[] args)
    {
        System.out.print("N = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] a = new int [n];
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.nextInt();
        }
        System.out.println("Array output:");
        for(int i=0 ; i<n ;i++)
        {
            System.out.println(a[i]);
        }

    }
}