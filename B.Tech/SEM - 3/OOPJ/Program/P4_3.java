import java.util.*;

class P4_3
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of Array:");
        int n = sc.nextInt();

        int[] arr = new int[n];

        for(int i=0 ; i < arr.length ; i++)
        {
            System.out.print((i+1)+" value : ");
            arr[i] = sc.nextInt();
        }

        System.out.println("In Entered Order");
        for(int i=0 ; i < arr.length ; i++)
        {
            System.out.print(arr[i]+" | ");
        }
        System.out.println();
        System.out.println("In Reverse Order");
        for(int i=arr.length-1 ; i>=0 ; i--)
        {
            System.out.print(arr[i]+" | ");
        }
    }
}