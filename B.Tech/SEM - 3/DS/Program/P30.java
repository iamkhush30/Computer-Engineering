import java.util.*;

class P30
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int[][] a = new int [2][2];
        int[][] b = new int [2][2];
        int[][] c = new int [2][2];

        System.out.println("Array one:");
        for(int i=0 ; i<2 ;i++)
        {
            for(int j=0 ; j<2 ; j++)
            {
                a[i][j] = sc.nextInt();
            }
        }

        System.out.println("Array Two:");
        for(int i=0 ; i<2 ;i++)
        {
            for(int j=0 ; j<2 ; j++)
            {
                b[i][j] = sc.nextInt();
                c[i][j] = a[i][j] + b[i][j];
            }
        }

        System.out.println("Sum of Array:");

        for(int i=0 ; i<2 ;i++)
        {
            for(int j=0 ; j<2 ; j++)
            {
                System.out.print(c[i][j]+" ");
            }
            System.out.println("");
        }
    }
}