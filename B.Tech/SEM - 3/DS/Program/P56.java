
import java.util.Scanner;

class P57
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice, data;
        boolean loop = true;

        Node n = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for Insert At Last");
            System.out.println("Press 2 for Display Link List");
            System.out.println("Press 3 to Exit");
            System.out.println("");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

            switch(choice) 
            {
                case 1:
                    n.insertAtLast();
                    break;
                case 2:
                    n.displayNode();
                    break;
                case 3:
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
    
    void insertAtLast() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Data : ");
        int data = sc.nextInt();
        Node x = new Node(data);
        if (first == null) {
            first = x;
            return;
        }
        Node current = first;
        while (current.link != null) {
            current = current.link;
        }
        current.link = x;
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