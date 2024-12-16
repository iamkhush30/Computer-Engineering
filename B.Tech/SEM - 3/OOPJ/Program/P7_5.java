import java.util.*;

class P7_5 {
    public static void main(String[] args) {
        Manager m = new Manager();
        System.out.println("Enter Manager Detail");
        m.setDetail();

        Employee e = new Employee();
        System.out.println("Enter Employee Detail");
        e.setDetail();

        System.out.println("----------Details of Manager----------");
        m.getDetail();

        System.out.println("----------Details of Employee----------");
        e.getDetail();
    }
}

class Member {
    String name;
    int age;
    Long phone_number;
    String address;
    double salary;

    void printSalary()
    {
        System.out.println("Salary : "+salary);
    }
}

class Manager extends Member {
    String department;

    void setDetail()
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Name :");
        super.name = sc.next();
        System.out.print("Enter Age :");
        super.age = sc.nextInt();
        System.out.print("Enter Phone Number :");
        super.phone_number = sc.nextLong();
        System.out.print("Enter Address :");
        super.address = sc.nextLine();
        System.out.print("Enter Salary :");
        super.salary = sc.nextDouble();
        System.out.print("Enter Department :");
        department = sc.next();
    }

    void getDetail()
    {
        System.out.println("Name : "+ super.name);
        System.out.println("Age : "+ super.name);
        System.out.println("Phone Number : "+ super.name);
        System.out.println("Address : "+ super.name);
        super.printSalary();
        System.out.println("Department : "+ department);
    }
}

class Employee extends Member {
    String specialization;

    void setDetail()
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Name :");
        super.name = sc.next();
        System.out.print("Enter Age :");
        super.age = sc.nextInt();
        System.out.print("Enter Phone Number :");
        super.phone_number = sc.nextLong();
        System.out.print("Enter Address :");
        super.address = sc.nextLine();
        System.out.print("Enter Salary :");
        super.salary = sc.nextDouble();
        System.out.print("Enter Specialization :");
        specialization = sc.next();
    }

    void getDetail()
    {
        System.out.println("Name : "+ super.name);
        System.out.println("Age : "+ super.name);
        System.out.println("Phone Number : "+ super.name);
        System.out.println("Address : "+ super.name);
        super.printSalary();
        System.out.println("Specialization : "+ specialization);
    }    
}