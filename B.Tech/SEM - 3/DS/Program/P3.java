import java.util.*;

class P3
{
    public static void main(String[] args)
    {
        System.out.print("A = ");
        Scanner sc = new Scanner(System.in);
        char a = sc.next().charAt(0);
        if(a=='a' || a=='e' || a=='i' || a=='o' || a=='u' || a=='A' || a=='E' || a=='I' || a=='O' || a=='U' )
            System.out.print("Entered Character is Vowels");
        else
            System.out.print("Entered Character is not Vowels");
    }
}