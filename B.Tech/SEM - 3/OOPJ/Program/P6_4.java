import java.util.Scanner;

class P6_4
{
    public static void main(String[] args) 
    {
        Bank_Account ba = new Bank_Account();
        ba.getAccountDetails();
        ba.displayAccountDetails();
    }
}
class Bank_Account
{
    String accountNo;
    String userName;
    String email;
    String accountType; 
    Double accountBalance;

    void getAccountDetails()
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Account Number :");
        accountNo = sc.next();
        System.out.print("Username :");
        userName = sc.next();
        System.out.print("Email :");
        email = sc.next();
        System.out.print("Account Type :");
        accountType = sc.next();
        System.out.print("Account Balance:");
        accountBalance = sc.nextDouble();
    }

    void displayAccountDetails()
    {
        System.out.println();
        System.out.println("Account Number :"+accountNo);
        System.out.println("Username :"+userName);
        System.out.println("Email :"+email);
        System.out.println("Account Type :"+accountType);
        System.out.println("Account Balance:"+accountBalance);
    }
}
