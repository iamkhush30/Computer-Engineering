import java.util.*;

class P93 {
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

        int i = 1;
        while (i < n) 
        {
            int key = a[i];
            int j = i - 1;

            while(j >= 0 && a[j] > key)
            {
                a[j+1] = a[j];
                j--;
            }
            a[j+1] = key;
            
            i++;
        }

        System.out.print("After  sorting Array : ");
        for (i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
    }
}