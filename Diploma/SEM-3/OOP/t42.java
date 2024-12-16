class Father
{
	void eat()
	{
		System.out.println("Father is eating");
	}
}
class Girl extends Father
{
	void eat()
	{
		System.out.println("Girl is eating");
	}
}
class t42
{
	public static void main(String[] args) 
	{
		Girl g1 = new Girl();
		g1.eat();
	}
}