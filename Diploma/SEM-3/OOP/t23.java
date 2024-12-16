import java.util.*;
class student
{
	String Name;
	int Roll_no;
} 
class t23
{
	public static void main(String[] args) 
	{
		student s1 = new student();
		Scanner s = new Scanner(System.in);
		System.out.println("Enter name:");
		s1.Name = s.nextLine();
		System.out.println("Enter roll no:");
		s1.Roll_no = s.nextInt();
		System.out.println(s1.Name);
		System.out.println(s1.Roll_no);
	}
	
}