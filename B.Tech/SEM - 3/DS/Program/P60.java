
import java.util.Scanner;

class P60
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice, data;
        boolean loop = true;

        Node n = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for PUSH");
            System.out.println("Press 2 for POP");
            System.out.println("Press 3 for PEEP");
            System.out.println("Press 4 for CHANGE");
            System.out.println("Press 5 for Display");
            System.out.println("Press 6 to Exit");
            System.out.println("");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

            switch(choice) 
            {
                case 1:
                    n.PUSH();
                    break;
                case 2:
                    n.POP();
                    break;
                case 3:
                    n.PEEP();
                    break;
                case 4:
                    n.CHANGE();
                    break;
                case 5:
                    n.displayNode();
                    break;
                case 6:
                    loop=false;
                    break;
                default:
                    System.out.println("Invalid Choice");
                    break;
            }
        }

    }

}

class Node {

    int data;
    Node link;
    Node first;

    public Node(int data) {
        this.data = data;
        this.link = null;
    }
    
    void PUSH() 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Data : ");
        int data = sc.nextInt();
        Node x = new Node(data);
        if (first == null) {
            first = x;
            displayNode();
            return;
        }
        Node current = first;
        while (current.link != null) {
            current = current.link;
        }
        current.link = x;
        displayNode();
    }
    
    void POP() {
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        Node temp = current.link;
        while (temp.link != null) {
            current = current.link;
            temp = temp.link;
        }
        current.link = null;
        displayNode();
    }

    void PEEP() 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ith Element : ");
        int pos = sc.nextInt();
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        if (pos == 1) {
            System.out.println(first.data);
            return;
        }
        Node current = first;
        while (pos >= 2)
        {
            current = current.link;
            pos--;
        }
        System.out.println(current.data);
    }

    void CHANGE()
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ith Element : ");
        int pos = sc.nextInt();
        System.out.print("Replace value : ");
        int n = sc.nextInt();
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        if (pos == 1) {
            first.data = n;
            displayNode();
            return;
        }
        Node current = first;
        while (pos >= 2)
        {
            current = current.link;
            pos--;
        }
        current.data = n;
        displayNode();
    }
    
    void displayNode() {
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


