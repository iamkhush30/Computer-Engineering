import java.util.*;
class Bank_Acount
{
	int account_no,salary;
	void getvalue()
	{
		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter Account no :");
		account_no = s1.nextInt();
		System.out.println("Enter salary :");
		salary = s1.nextInt();
	}
	void setvalue(int an, int s)
	{
		account_no = an;
		salary = s;

		System.out.println("Account_no :"+account_no);
		System.out.println("Salary :"+salary);
	}
}
class t27
{
	public static void main(String[] args) 
	{
		Bank_Acount ba1 = new Bank_Acount();
		Bank_Acount ba2 = new Bank_Acount();

		System.out.println("\nFor 1st Account\n");
		ba1.getvalue();

		System.out.println("\nFor 2nd Account\n");
		ba2.getvalue();

		System.out.println("\nFor 1st Account\n");
		ba1.setvalue(ba1.account_no, ba1.salary);

		System.out.println("\nFor 2nd Account\n");
		ba2.setvalue(ba2.account_no, ba2.salary);
	}
}