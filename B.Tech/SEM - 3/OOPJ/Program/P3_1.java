import java.util.*;

class P3_1
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        double sum = 0;
        System.out.print("Subject-1 = ");
        sum += sc.nextDouble();
        System.out.print("Subject-2 = ");
        sum += sc.nextDouble();
        System.out.print("Subject-3 = ");
        sum += sc.nextDouble();
        System.out.print("Subject-4 = ");
        sum += sc.nextDouble();
        System.out.print("Subject-5 = ");
        sum += sc.nextDouble();

        double persontage = (sum/500) * 100;


        if(persontage >= 60)
            System.out.println("First division");
        
        else if(persontage >= 50 && persontage <= 59)
            System.out.println("Second division");
        
        else if(persontage >= 40 && persontage <= 49)
            System.out.println("Third division");
        
        else if(persontage < 40)
            System.out.println("Fail");

        System.out.println("Persontage = "+persontage);
    }
}