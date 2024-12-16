import java.util.*;

class P4_1
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String:");
        String x = sc.next();
        int v = 0;
        int c = 0;

        for(char ch : x.toCharArray())
        {
            if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'||ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U')
                v++;
            else
                c++;
        }
        
        System.out.println("vowels = "+v);
        System.out.println("consonants = "+c);
    }
}