class keyword
{
	final int a=20;
	static int b=10;
}
class t32
{
	public static void main(String[] args) 
	{
		keyword k1 = new keyword();
		System.out.println("\nFinal value:"+k1.a);
		System.out.println("\nStatic value:"+k1.b);
	}
}