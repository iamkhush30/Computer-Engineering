import java.util.*;

public class E1{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Name = ");
        String name = sc.next();
        
        System.out.print("Roll No. = ");
        int roll_no = sc.nextInt();
        System.out.print("SPI= ");
        Double spi = sc.nextDouble();
        
        int total = 0;
        for(int i=0 ; i<5 ; i++)
        {
            System.out.print("Sub"+(i+1)+" = ");
            int s1 = sc.nextInt();
            total += s1;
        }

        System.out.println("Total Marks = "+total);

        System.out.println("Persentage = "+(total/5)+"%");
    }
}