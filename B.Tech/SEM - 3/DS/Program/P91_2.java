import java.util.*;

class P91_2 {
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

        Binarysearch bs = new Binarysearch();

        int valid = bs.binarySearch(a, L, R, x);

        if (valid != -1)
            System.out.println("Seached element " + x + " is available at " + valid + " in array");

        else
            System.out.println("Seached element " + x + " is not available in array");
    }
}

class Binarysearch {

    int binarySearch(int[] a, int L, int R, int x) {

        if (L <= R) {
            int middle = (L + R) / 2;
            if (x == a[middle])
                return middle;

            else if (a[middle] < x)
                binarySearch(a, middle + 1, R, x);

            else if (a[middle] > x)
                binarySearch(a, L, middle - 1, x);

            else if (L > R)
                return -1;
        } else
            return -1;
        return -1;
    }
}
