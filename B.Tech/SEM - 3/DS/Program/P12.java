import java.util.*;

class P12
{
    public static void main(String[] args)
    {
        for(int i=1 ; i<=1000;i++)
        {
            int count=0,num1=i,num2=i,total=0;
            while(num1!=0)
            {
                num1 /= 10;
                count++;
            }
            while (num2 > 0) 
            {
                int digit = num2 % 10,sum=1;
                for(int j=count;j>0;j--)
                {
                    sum *= digit;
                }
                total += sum;
                num2 = num2 / 10;
            }
            if(total==i)
                System.out.println(i);
        }
    }
}