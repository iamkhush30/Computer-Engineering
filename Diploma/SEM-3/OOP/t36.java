class copy
{
	int a;
	copy()
	{
		
	}
	copy(int a)
	{
		a = c1.a;
	}
}
class t36
{
	public static void main(String[] args) 
	{
		copy c1 = new copy(10);
		copy c2 = new copy(c1);
		System.out.println("Value of c2 = "+c2.a);
	}
}