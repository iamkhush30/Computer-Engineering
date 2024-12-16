import java.util.*;

class P96 {
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

        int[] b = mergeSort(a,0, a.length-1);

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " | ");
        }
    }

    static int[] mergeSort(int[] a, int low, int high)
    {
        if(low < high)
        {
            int mid = (int) Math.floor((low+high)/2);

            mergeSort(a, low, mid);

            mergeSort(a, mid+1, high);

            int[]b = merge(a, low, mid, high);

            for(int i=low ; i<=high ; i++)
                a[i] = b[i];

            return a;
        }
        return null;
    }

    static int[] merge(int[]a ,int low, int mid, int high)
    {
        int[] b = new int[a.length];
        int h=low, i=low, j=mid+1;

        while (h<=mid && j<=high) 
        {
            if(a[h] <= a[j])
            {
                b[i] = a[h];
                h++;
            }
            else
            {
                b[i] = a[j];
                j++;
            }
            i++;
        }

        if(h>mid)
        {
            for(int k=j ; k<=high ; k++)
            {
                b[i] = a[k];
                i++;
            }
        }
        else
        {
            for(int k=h ; k<=mid ; k++)
            {
                b[i] = a[k];
                i++;
            }
        }
        return b;
    }
}
