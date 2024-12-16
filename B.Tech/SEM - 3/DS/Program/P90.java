import java.util.*;

class P90 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of an Array :");
        int n = sc.nextInt();

        int[] a = new int[n];

        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }

        System.out.print("Search an Element : ");
        int x = sc.nextInt();

        for (int i = 0; i < n; i++) {
            if (a[i] == x) {
                System.out.println("Sreached element " + a[i] + " is at " + i + " index");
                break;
            }
        }
    }
}