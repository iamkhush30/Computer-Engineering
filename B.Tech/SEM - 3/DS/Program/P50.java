import java.util.*;

class P50 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of Stack = ");
        int n = sc.nextInt();

        Queue q = new Queue(n);

        boolean temp = true;

        while (temp) 
        {
            System.out.println("");
            System.out.println("Press 1 for ENQUEUE");
            System.out.println("Press 2 for DEQUEUE");
            System.out.println("Press 3 for DISPLAY");
            System.out.println("Press 4 for EXIT");
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    q.ENQUEUE();
                    break;
                case 2:
                    q.DEQUEUE();
                    break;
                case 3:
                    q.DISPLAY();
                    break;
                case 4:
                    temp = false;
                    break;
                default:
                    System.out.println("Invalid Input");
                    break;
            }
        }
    }
}

class Queue {

    private int[] Q;
    private int F;
    private int R;

    public Queue(int n) 
    {
        Q = new int[n];
        F = -1;
        R = -1;
    }

    void ENQUEUE() 
    {
        Scanner sc = new Scanner(System.in);
        if (R >= Q.length-1) 
        {
            System.out.println("Queue Overflow");
            return;
        }

        else 
        {
            R++;
            System.out.print("Enter value : ");
            int x = sc.nextInt();
            Q[R] = x;
            
            if (F == -1)
                F++;

            DISPLAY();
        }
    }

    void DEQUEUE() 
    {
        if (F == -1) 
        {
            System.out.println("Underflow");
            return;
        }
        else
        {
            if(F == R)
            {
                F = -1;
                R = -1;
            }
            else
            {
                F++;
            }
            DISPLAY();
        }
    }

    void DISPLAY()
    {
        if(F == -1)
        {
            System.out.println("Queue Underflow");
            return;
        }
        else
        {
            int i = F;
            while(i<=R)
            {
                System.out.print(Q[i]+" | ");
                i++;
            }
            System.out.println();
        }
    }
}