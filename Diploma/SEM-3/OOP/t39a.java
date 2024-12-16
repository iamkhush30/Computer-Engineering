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
class t39a
{ 	
    public static void main(String[] args)  	
    { 		
        B b1 = new B();
        b1.a();
        b1.b();
    } 
}