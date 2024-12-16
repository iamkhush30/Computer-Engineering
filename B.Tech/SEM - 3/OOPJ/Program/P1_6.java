import java.util.*;

public class P1_6{
    public static void main(String[] args){
        System.out.print("Char = ");
        Scanner sc = new Scanner(System.in);
        char n = sc.next().charAt(0);
        // if( n=='a' || n=='e' || n=='i' || n=='o' || n=='u' || n=='A' || n=='E' || n=='I' || n=='O' || n=='U' )
        //     System.out.print(n+" is vowel");
        // else
        //     System.out.print(n+" is not vowel");
        switch(n){
            case 'a':
                System.out.print(n+" is vowel");
                break;
            case 'e':
                System.out.print(n+" is vowel");
                break;
            case 'i':
                System.out.print(n+" is vowel");
                break;
            case 'o':
                System.out.print(n+" is vowel");
                break;
            case 'u':
                System.out.print(n+" is vowel");
                break;
            case 'A':
                System.out.print(n+" is vowel");
                break;
            case 'E':
                System.out.print(n+" is vowel");
                break;
            case 'I':
                System.out.print(n+" is vowel");
                break;
            case 'O':
                System.out.print(n+" is vowel");
                break;
            case 'U':
                System.out.print(n+" is vowel");
                break;
            default:
                System.out.print(n+" is not vowel");
                break;
        }
    }
}