class PrintNumber
{
	void Print(int a)
	{
		System.out.println("Int = "+a);
	}
	void Print(float a)
	{
		System.out.println("Float = "+a);
	}
	void Print(double a)
	{
		System.out.println("Double = "+a);
	}
	void Print(boolean a)
	{
		System.out.println("Boolean = "+a);
	}
}
class t31
{
	public static void main(String[] args) 
	{
		PrintNumber p1 = new PrintNumber();
		p1.Print(10);
		p1.Print(10.25f);
		p1.Print(15.68);
		p1.Print(186.68);
	}
}