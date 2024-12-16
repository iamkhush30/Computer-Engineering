import java.util.*;

class P92 {
    public static void main(String[] args) {
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

        for (int i = 0; i <= n; i++) 
        {
            for(int j=0 ; j<n-1-i ; j++)
            {
                if(a[j] > a[j+1])
                {
                    int swap = a[j];
                    a[j] = a[j+1];
                    a[j+1] = swap;
                }
            }
        }

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
    }
}