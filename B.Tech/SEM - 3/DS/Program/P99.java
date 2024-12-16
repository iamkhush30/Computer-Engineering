import java.util.*;

class P99 {
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

        for (int gap = n/2 ; gap >= 1 ; gap = gap/2) 
        {
            for(int j=gap ; j<n ; j++)
            {
                for(int i=j-gap ; i>=0 ; i=i-gap)
                {
                    if(a[i+gap] > a[i])
                        break;
                    
                    else
                    {
                        int temp = a[i];
                        a[i] = a[i+gap];
                        a[i+gap] = temp;
                    }
                }
            }
        }

        System.out.print("After  sorting Array : ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " | ");
        }
    }
}