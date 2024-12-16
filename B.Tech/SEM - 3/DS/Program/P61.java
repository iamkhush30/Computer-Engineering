
import java.util.Scanner;

class P61
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice;
        boolean loop = true;

        Node q = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for ENQUEUE");
            System.out.println("Press 2 for DEQUEUE");
            System.out.println("Press 3 for DISPLAY");
            System.out.println("Press 4 for EXIT");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

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
                    loop = false;
                    break;
                default:
                    System.out.println("Invalid Input");
                    break;
            }
        }

    }

}

class Node {

    int data;
    Node link;
    Node first;

    public Node(int data)
    {
        this.data = data;
        this.link = null;
    }
    
    void ENQUEUE() 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Data : ");
        int data = sc.nextInt();
        Node x = new Node(data);
        if (first == null) 
        {
            first = x;
            DISPLAY();
            return;
        }
        Node current = first;
        while (current.link != null) 
        {
            current = current.link;
        }
        current.link = x;
        DISPLAY();
    }
    
    void DEQUEUE() 
    {
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        first = first.link;
        current.link = null;
        DISPLAY();
    }

    void DISPLAY() {
        if (first == null) 
        {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        while (current != null) 
        {
            System.out.print(" | " + current.data);
            current = current.link;
        }
    }
}


