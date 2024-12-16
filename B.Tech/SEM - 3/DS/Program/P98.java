import java.util.*;

class P98 {
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

        int[] b = heapSort(a);

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " | ");
        }
    }

    static int[] heapSort(int[] a)
    {
        a = maxHeap(a);
        for(int i=a.length-1 ; i>=0 ; i--)
        {
            int temp = a[0];
            a[0] = a[i];
            a[i] = temp;

            a = heapify(a, i, 0);
        }

        return a;
    }

    static int[] maxHeap(int[] a)
    {
        for(int i=a.length/2-1 ; i>=0 ; i--)
        {
            a = heapify(a, a.length, i);
        }
        return a;
    }

    static int[] heapify(int[] a, int n , int i)
    {
        int maxindex = i;
        int leftChild = i*2+1;
        int rightChild = i*2+2;

        if(leftChild < n && a[leftChild] > a[maxindex])
            maxindex = leftChild;
            
        if(rightChild < n && a[rightChild] > a[maxindex])
        maxindex = rightChild;

        if(i != maxindex)
        {
            int temp = a[i];
            a[i] = a[maxindex];
            a[maxindex] = temp;

            heapify(a, n, maxindex);
        }

        return a;
    }
}