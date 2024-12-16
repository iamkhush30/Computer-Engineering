import java.util.*;

class P4_2
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int[] arr = new int[4];
        
        double avg = 0;

        for(int i=0;i<arr.length;i++)
        {
            System.out.print((i+1)+" value : ");
            arr[i] = sc.nextInt();
            avg += arr[i];
        }

        System.out.println("Average of Enterd values = "+(avg/arr.length));
    }
}