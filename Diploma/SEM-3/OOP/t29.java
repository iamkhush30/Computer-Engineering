import java.util.*;
import java.io.*;
class person
{
	String name;
	int age;
}
class t29
{
	public static void main(String[] args) 
	{
		person p1 = new person();

		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter Name : ");
		p1.name = s1.nextLine();
		System.out.println("Enter Age : ");
		p1.age = s1.nextInt();

		System.out.println("Name : "+p1.name);
		System.out.println("Age : "+p1.age);
	}
}