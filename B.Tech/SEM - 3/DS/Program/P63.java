
import java.util.Scanner;

class P63
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice, data;
        boolean loop = true;

        Node n = new Node(1);
        Node m = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for Insert At Last");
            System.out.println("Press 2 for Delete At Last");
            System.out.println("Press 3 for Display Link List");
            System.out.println("Press 4 for Copy link list");
            System.out.println("Press 5 to Exit");
            System.out.println("");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

            switch(choice) 
            {
                case 1:
                    System.out.print("Enter Data : ");
                    data = sc.nextInt();
                    n.insertAtLast(data);
                    break;
                case 2:
                    n.deleteAtLast();
                    break;
                case 3:
                    n.displayNode();
                    break;
                case 4:
                    loop = false;
                    m = n.copyLinkList(m);
                    System.out.println("Copied Link List :");
                    m.displayNode();
                    break;
                case 5:
                    loop = false;
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
    
    void insertAtLast(int data) {
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
    }

    void deleteAtLast() {
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

    Node copyLinkList(Node m)
    {
        if (first == null) 
        {
            System.out.println("Empty Link list");
            return first;
        }
        Node current = first;
        while (current != null)
        {
            m.insertAtLast(current.data);
            current = current.link;
        }
        return m;
    }
}


