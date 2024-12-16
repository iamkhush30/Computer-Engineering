import java.util.*;

class P35
{
    static class Student_Detail
    {
        int Enrollment_No;
        String Name;
        int Semester;
        float CPI;

        Student_Detail(int eno,String name,int sem,float cpi)
        {
            this.Enrollment_No = eno;
            this.Name = name;
            this.Semester = sem;
            this.CPI = cpi;
        }

        void printDetail(int i)
        {
            System.out.println("");
            System.out.println("Detail"+(i+1)+" student : ");
            System.out.println("Enrollment No = "+Enrollment_No);
            System.out.println("Student Name = "+Name);
            System.out.println("Semester = "+Semester);
            System.out.println("CPI = "+CPI);
        }
    }
    public static void main(String[] args)
    {
        Student_Detail[] a = new Student_Detail[5];

        for (int i = 0; i < 5; i++) 
        {
            Scanner sc = new Scanner(System.in);
            System.out.println("");
            System.out.print("Enter Detail of "+(i+1)+" student : ");
                
            System.out.print("Enrollment No = ");
            int eno = sc.nextInt();

            System.out.print("Student Name = ");
            String name = sc.next();

            System.out.print("Semester = ");
            int sem = sc.nextInt();

            System.out.print("CPI = ");
            float cpi = sc.nextFloat();

            Student_Detail s = new Student_Detail(eno,name,sem,cpi);

            a[i] = s;

        }
        for (int i = 0; i < 5; i++) 
        {
            a[i].printDetail(i);
        }
    }
}