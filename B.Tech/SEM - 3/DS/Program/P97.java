import java.util.*;

class P97 {
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

        int[] b = quickSort(a, 0 , a.length);

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " | ");
        }
    }

    static int[] quickSort(int[] a, int LB, int UB) {
        boolean flag = true;

        if(LB < UB)
        {
            int i = LB;
            System.out.println(i);
            int j = UB;
            int key = a[LB];

            while (flag) 
            {
                i++;
                while (a[i] < key && i < a.length) 
                {
                    System.out.println(i);
                    i++;
                }
                j--;
                while(a[j] > key && j>=0)
                {
                    j--;
                }

                if(i < j)
                {
                    int temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
                else
                {
                    flag = false;
                }
            }

            int temp = a[LB];
            a[LB] = a[j];
            a[j] = temp;

            a = quickSort(a, LB, j);
            a = quickSort(a, j+1, UB);
        }
        return a;
    }
}