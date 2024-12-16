class add
{
	int a;
	add(int x)
	{
		a = x;
	}
	add increment()
	{
		add ab = new add(a+a);
		return ab;
	}
}
class t37
{
	public static void main(String[] args) 
	{
		add a1 = new add(10);
		add a2;
		a2 = a1.increment();
		System.out.println("a1 = "+a1.a);
		System.out.println("a2 = "+a2.a);
		a2 = a2.increment();
		System.out.println("a2 = "+a2.a);
	}
}