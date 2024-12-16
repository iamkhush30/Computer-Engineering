import java.util.*;
class student
{
	String name,address;
	int roll_no,phone_no;
	void get()
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter name:");
		name = sc.nextLine();
		System.out.println("Enter address:");
		address = sc.nextLine();	
		System.out.println("Enter roll no:");
		roll_no = sc.nextInt();
		System.out.println("Enter phone_no:");
		phone_no = sc.nextInt();	
	}
	void set(String n,String a,int r,int p)
	{
		name = n;
		address = a;
		roll_no = r;
		phone_no = p;

		System.out.println("Name : "+name);
		System.out.println("address : "+address);
		System.out.println("roll_no : "+roll_no);
		System.out.println("phone_no : "+phone_no);
	}
}
class t25
{
	public static void main(String args[]) 
	{
		student s1 = new student();
		student s2 = new student();

		s1.get();
		s2.get();

		s1.set(s1.name, s1.address, s1.roll_no, s1.phone_no);
		s2.set(s2.name, s2.address, s2.roll_no, s2.phone_no);
	}
}