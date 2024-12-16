import java.util.*;

class P52 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of Stack = ");
        int n = sc.nextInt();

        Queue q = new Queue(n);

        boolean temp = true;

        while (temp) 
        {
            System.out.println("");
            System.out.println("Press 1 for Insert From Front");
            System.out.println("Press 2 for Insert From Rear");
            System.out.println("Press 3 for Delete From Front");
            System.out.println("Press 4 for Delete From Rear");
            System.out.println("Press 5 for DISPLAY");
            System.out.println("Press 6 for EXIT");
            System.out.println();

            System.out.print("Your Choice :");
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    q.ENQUEUE_FRONT();
                    break;
                case 2:
                    q.ENQUEUE_REAR();
                    break;
                case 3:
                    q.DEQUEUE_FRONT();
                    break;
                case 4:
                    q.DEQUEUE_REAR();
                    break;
                case 5:
                    q.DISPLAY();
                    break;
                case 6:
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

    void ENQUEUE_FRONT()
    {
        Scanner sc = new Scanner(System.in);
        if(F==0)
        {
            System.out.println("Queue Overflow");
            return;
        }
        else
        {
            if(F==-1)
            {
                F=0;
                R=0;
            }
            else
            {
                F++;
            }
            System.out.print("Enter value : ");
            int x = sc.nextInt();
            Q[F] = x;

            DISPLAY();
        }
    }

    void ENQUEUE_REAR() 
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

    void DEQUEUE_FRONT() 
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

    void DEQUEUE_REAR()
    {
        if(R==-1)
        {
            System.out.println("Underflow");
            return;
        }
        else
        {
            if(F==R)
            {
                F = -1;
                R = -1;
            }
            else
            {
                R--;
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
            for(int i=F  ; i <= R ; i++)
            {
                System.out.print(Q[i]+" | ");
            }

        }
    }
}