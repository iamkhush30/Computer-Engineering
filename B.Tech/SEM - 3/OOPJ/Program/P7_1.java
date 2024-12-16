import java.util.*;

class P7_1 
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = Integer.parseInt(args[0]);

        Student[] listOfStudent = new Student[n];

        for(int i=0 ; i<n ; i++)
        {
            System.out.print("Student Name : ");
            String name = sc.next();

            System.out.print("Student Enrollment No. : ");
            int enroll = sc.nextInt();

            Student s = new Student(name, enroll);

            s.getSubjectDetail();
            s.calculateGradePoit();
            s.calculateSPI();
            s.displayResult();

            listOfStudent[i] = s;
        }
        sc.close();
    }    
}

class Student{
    String name;
    int enroll;
    String[] subject = {"DBMS","OOPJ","FOA","WT"};
    int[] subject_credits = {6,5,5,6};
    int total_cradit = 22;
    int[] subject_mark = new int[subject.length];
    double sum_Point = 0;
    double SPI = 0;

    Student(String name, int enroll)
    {
        this.name = name;
        this.enroll = enroll;
    }

    void getSubjectDetail()
    {
        Scanner sc = new Scanner(System.in);
        for(int i=0 ; i<subject.length ; i++)
        {
            System.out.print(subject[i] + " : ");
            subject_mark[i] = sc.nextInt();
        }
        sc.close();
    }

    void calculateGradePoit()
    {
        for(int i=0 ; i<subject_mark.length ; i++)
        {
            sum_Point += ((subject_mark[i]/10)+1) * subject_credits[i];
        }
    }

    void calculateSPI()
    {
        SPI = sum_Point/total_cradit;
    }

    void displayResult()
    {
        System.out.println("Sudent "+name+" has total SPI = "+SPI);
    }
}