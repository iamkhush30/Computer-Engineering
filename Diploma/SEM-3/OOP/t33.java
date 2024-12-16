class count
{
	static int count=0;
	static void func()
	{
		count++;
	}
}
class t33
{
	public static void main(String[] args) 
	{
		count c1 = new count();
		count c2 = new count();
		c1.func();
		c2.func();
		System.out.println("Count of Object:"+c1.count);
	}
}