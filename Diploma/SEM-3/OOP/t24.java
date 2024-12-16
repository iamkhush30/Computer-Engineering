import java.util.*;
class area
{
	float l,b;
	void setdim(float length, float breath)
	{
		l = length;
		b = breath;
	}
	float getArea()
	{
		return l*b;
	}
}
class t24
{
	public static void main(String[] args) 
	{
		float area;
		area a1 = new area();
		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter length:");
		a1.l = s1.nextFloat();
		System.out.println("Enter breath:");
		a1.b = s1.nextFloat();
		area = a1.getArea();
		System.out.println("Area : "+area);
	}
}