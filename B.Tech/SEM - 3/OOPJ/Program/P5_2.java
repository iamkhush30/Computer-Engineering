import java.util.Scanner;

class P5_2 
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size = ");
        int n = sc.nextInt();
        int k=n-1;
        int s=n;
        
        for(int i=1 ; i < (n*2) ; i++)
        {
            if(i<=n)
            {
                for(int j=s ; j > 1 ; j--)
                {
                    System.out.print(" ");
                }
                s--;
                for(int j=0 ; j < i ; j++)
                {
                    System.out.print(" *");
                }
            }
            else
            {
                s++;
                for(int j=s+1 ; j > 1 ; j--)
                {
                    System.out.print(" ");
                }
                for(int j=k ; j > 0 ; j--)
                {
                    System.out.print(" *");
                }
                k--;
            }
            System.out.println("");
        }
        
    }    
}