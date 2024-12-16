// Create a class which ask the user to enter a sentence, and it should display count of
// each vowel type in the sentence. The program should continue till user enters a word
// “quit”. Display the total count of each vowel for all sentences. [B]
import java.util.*;

class P6_3 {
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);

        Sentence se = new Sentence();

        while (true) 
        {
            System.out.print("Enter String : ");
            String n = sc.next();
            if(n.equalsIgnoreCase("Quit"))
            {
                System.out.println("Total number of vowel = "+se.sumVowel);
                break;
            }
            else
            {
                se.countVowelsInString(n);
            }
        }
    }
}
class Sentence
{
    int sumVowel = 0;

    void countVowelsInString(String n)
    {
        for(char ch : n.toCharArray())
        {
            if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'||ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U')
            {
                sumVowel++;
            }
        }
    }
}