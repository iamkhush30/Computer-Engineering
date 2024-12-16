import java.util.*;
class P95
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of an Array :");
        int n = sc.nextInt();

        int[] a = new int[n];

        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }

        System.out.print("Before sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
        System.out.println();

        int[] b = radixSort(a);

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " | ");
        }
    }

    static int[] radixSort(int[] a)
    {
        int m = getMax(a);

        for(int place=1 ; m/place > 0 ; place *= 10)
        {
            a = countSort(a, a.length, place);
        }

        return a;
    }

    static int[] countSort(int[] a, int n, int place)
    {

        int[] c = new int[10];

        for(int i=0 ; i<n ; i++)
        {
            c[(a[i]/place)%10]++;
        }

        for(int i=1 ; i<10 ; i++)
        {
            c[i] = c[i] + c[i-1];
        }

        int[] b = new int[n];

        for(int i=n-1 ; i>=0 ; i--)
        {
            b[c[(a[i]/place)%10]-1] = a[i];
            c[(a[i]/place)%10]--;
        }

        return b;
    }

    static int getMax(int[] a)
    {
        int max = 0 ;

        for(int i=0 ; i<a.length ; i++)
        {
            if(a[i] > max)
                max = a[i];
        }

        return max;
    }
}