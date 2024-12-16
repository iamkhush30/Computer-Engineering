import java.util.*;

class P94 {
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

        for (int i = 0; i < n; i++) 
        {
            for(int j=i+1 ; j<n ; j++)
            {
                if(a[i] > a[j])
                {
                    int swap = a[i];
                    a[i] = a[j];
                    a[j] = swap;
                }
            }
        }

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
    }
}