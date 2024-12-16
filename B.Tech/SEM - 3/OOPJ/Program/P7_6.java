import java.util.*;
class P7_6 {
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);

        int x1, x2, y1, y2, z1, z2;

        MyPoint mp = new MyPoint();
        System.out.println("Enter values for calculating coordinates of 2 Point in 2D");
        x1 = sc.nextInt();
        x2 = sc.nextInt();
        y1 = sc.nextInt();
        y2 = sc.nextInt();
        mp.setXY(x1, x2, y1, y2);

        ThreeDPoint td = new ThreeDPoint();
        
        System.out.println("Enter values for calculating coordinates of 2 Point in 3D");
        x1 = sc.nextInt();
        x2 = sc.nextInt();
        y1 = sc.nextInt();
        y2 = sc.nextInt();
        z1 = sc.nextInt();
        z2 = sc.nextInt();
        td.setZ(x1, x2, y1, y2, z1, z2);

        System.out.println("distance of 2 point in 2D : "+mp.distance());
        System.out.println("distance of 2 point in 3D : "+td.distance());
    }
}

class MyPoint {
    int x1;
    int x2;
    int y1;
    int y2;

    MyPoint()
    {
        x1 = x2 = y1 = y2 = 0;
    }

    void setXY(int x1, int x2, int y1, int y2)
    {
        this.x1 = x1;
        this.x2 = x2;
        this.y1 = y1;
        this.y2 = y2;
    }

    double distance()
    {
        double coordinates = Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2));
        return coordinates ;
    }
}

class ThreeDPoint extends MyPoint {
    int z1;    
    int z2;

    void setZ(int x1, int x2, int y1, int y2, int z1, int z2)
    {
        super.setXY(x1, x2, y1, y2);
        this.z1 = z1;
        this.z2 = z2;
    }
    
    double distance()
    {
        double coordinates = Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2) + Math.pow(z1 - z2, 2));
        return coordinates;
    }
}