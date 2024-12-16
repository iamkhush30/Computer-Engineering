class A 
{ 
    void a() 	
    { 	System.out.println("Class A ");    } 
} 
class B extends A 
{ 
    void b() 	
    {   System.out.println("\nClass B ");    } 
} 
class C extends B 
{ 	
	void c() 	
    { 	System.out.println("\nClass C ");    } 
} 
class t39b
{   
    public static void main(String[] args)      
    {       
        C c1 = new C();     
        c1.a();         
        c1.b();
        c1.c();
    } 
}