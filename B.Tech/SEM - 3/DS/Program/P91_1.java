import java.util.*;

class P91_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of an Array :");
        int n = sc.nextInt();

        int[] a = new int[n];

        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }

        Arrays.sort(a);

        System.out.print("sorted Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
        System.out.println();

        System.out.print("Search an Element : ");
        int x = sc.nextInt();

        int L = 0, R = n - 1;
        while (L <= R) {
            int middle = (L + R) / 2;

            if (x == a[middle]) {
                System.out.println("Sreached element " + a[middle] + " is at " + middle + " index");
                break;
            }

            else if (a[middle] < x) {
                L = middle + 1;
            }

            else if (a[middle] > x) {
                R = middle - 1;
            }
        }

        if (L > R)
            System.out.println("Seached element " + x + " is not available in array");
    }
}