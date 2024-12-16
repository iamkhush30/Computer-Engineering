import java.util.*;

class P7_3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Name :");
        String name = sc.next();

        System.out.print("Breed : ");
        String breed = sc.next();

        Breed b = new Breed(name, breed);

        b.display();
        sc.close();
    }
}

class Animal
{
    String name;
    Animal(String name)
    {
        this.name = name;
    }
    void display()
    {
        System.out.println("Name Of Animal : "+name);
    }
}
class Breed extends Animal
{
    String breed;

    Breed(String name,String breed)
    {
        super(name);
        this.breed = breed;
    }
    void display()
    {
        super.display();
        System.out.println("Breed Of Animal : "+breed);
    }
}