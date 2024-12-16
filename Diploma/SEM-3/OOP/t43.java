interface A
{
	void get();
}
interface B
{
	void prin();
}
class abc implements A,B
{
	public void get()
	{
		System.out.println("A");
	}
	public void prin()
	{
		System.out.println("B");
	}
}

class t43 
{
	
	public static void main(String[] args) 
	{
		abc c = new abc(); 
		c.get();
		c.prin();
	}
}