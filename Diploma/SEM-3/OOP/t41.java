class A
{
	void a()
	{
		System.out.println("Class A");
	}
}
class B extends A
{
	void a()
	{
		super.a();
		System.out.println("Class B");
	}	
}
class t41
{
	public static void main(String[] args) 
	{
		B b1 = new B();
		b1.a();
	}
}