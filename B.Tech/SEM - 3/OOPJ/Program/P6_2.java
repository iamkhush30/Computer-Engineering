import java.util.*;

class P6_2 
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Hour = ");
        int h1 = sc.nextInt();
        System.out.print("Minute = ");
        int m1 = sc.nextInt();
        System.out.print("Second = ");
        int s1 = sc.nextInt();

        System.out.println("First Time = "+h1+" : "+m1+" : "+s1);

        System.out.print("Hour = ");
        int h2 = sc.nextInt();
        System.out.print("Minute = ");
        int m2 = sc.nextInt();
        System.out.print("Second = ");
        int s2 = sc.nextInt();

        System.out.println("Second Time = "+h2+" : "+m2+" : "+s2);

        Time t1 = new Time(h1, m1, s1);
        Time t2 = new Time(h2, m2, s2);
        t1.add(t2);
    }
}
class Time
{
    int h, m , s;
    Time(int h, int m, int s)
    {
        this.h = h;
        this.m = m;
        this.s = s;
    }

    // void add(int h, int m, int s)
    // {
    //     this.h += h;
    //     this.m += m;
    //     this.s += s;
    //     if(this.s >= 60)
    //     {
    //         this.m++;
    //         this.s -= 60;
    //     }
    //     else if(this.m >= 60)
    //     {
    //         this.h++;
    //         this.m -= 60;
    //     }
    //     System.out.println("Sum of Time ="+this.h+" : "+this.m+" : "+this.s);
    // }

    void add(Time t)
    {
        this.h += t.h;
        this.m += t.m;
        this.s += t.s;
        if(this.s >= 60)
        {
            this.m++;
            this.s -= 60;
        }
        else if(this.m >= 60)
        {
            this.h++;
            this.m -= 60;
        }
        System.out.println("Sum of Time ="+this.h+" : "+this.m+" : "+this.s);
    }
}
