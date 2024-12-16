class Constructor 
{
	int a;
	Constructor()
	{
		a = 10;
		System.out.println("a = "+a);
	}
}
class t34
{
	public static void main(String[] args) 
	{
		Constructor c1 = new Constructor();
	}
}