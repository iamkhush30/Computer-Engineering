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
class C extends A
{ 	
	void c() 	
    { 	System.out.println("\nClass C ");    } 
} 
class t39c
{   
    public static void main(String[] args)      
    {       
        B b1 = new B();         
        C c1 = new C();     
        b1.a();         
        c1.a();
        b1.b();     
        c1.c();
    } 
}