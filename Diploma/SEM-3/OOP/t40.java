class A
{
	void a()
	{
		System.out.println("This is Parent Class");
	}
}
class B extends A
{
	void b()
	{
		System.out.println("This is Child Class");
	}
}
class t40
{
	public static void main(String[] args) 
	{
		A a1 = new A();
		B b1 = new B();
		a1.a();
		b1.b();
	}
}