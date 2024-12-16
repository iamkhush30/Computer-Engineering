// Read two matrices, first 3x2 and second 2x3, perform multiplication operation
// and store result in third matrix and print it.

import java.util.*;

class P31
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int[][] a = new int [3][2];
        int[][] b = new int [2][3];
        int[][] c = new int [3][3];

        System.out.println("Array one:");
        for(int i=0 ; i<3 ;i++)
        {
            for(int j=0 ; j<2 ; j++)
            {
                a[i][j] = sc.nextInt();
            }
        }

        System.out.println("Array Two:");
        for(int i=0 ; i<2 ;i++)
        {
            for(int j=0 ; j<3 ; j++)
            {
                b[i][j] = sc.nextInt();
            }
        }

        for(int i=0 ; i<3 ;i++)
        {
            for(int j=0 ; j<3 ; j++)
            {
                for(int k=0 ; k<2 ; k++)
                {
                    c[i][j] += a[i][k] * b[k][j];
                }
            }
        }

        System.out.println("Multiplication of Array :");

        for(int i=0 ; i<3 ;i++)
        {
            for(int j=0 ; j<3 ; j++)
            {
                System.out.print(c[i][j]+" ");
            }
            System.out.println("");
        }
    }
}