
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
            System.out.println("Press 1 for Insert At First");
            System.out.println("Press 2 for Insert At Last");
            System.out.println("Press 3 for Delete At First");
            System.out.println("Press 4 for Delete At Last");
            System.out.println("Press 5 for Delete At Specific Position");
            System.out.println("Press 6 for Count Nodes");
            System.out.println("Press 7 for Display Link List");
            System.out.println("Press 8 to Exit");
            System.out.println("");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

            switch(choice) 
            {
                case 1:
                    n.insertAtFirst();
                    break;
                case 2:
                    n.insertAtLast();
                    break;
                case 3:
                    n.deleteAtFirst();
                    break;
                case 4:
                    n.deleteAtLast();
                    break;
                case 5:
                    n.deleteAtPosition();
                    break;
                case 6:
                    n.countNode();
                    break;
                case 7:
                    n.displayNode();
                    break;
                case 8:
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

    void insertAtFirst() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Data : ");
        int data = sc.nextInt();
        Node x = new Node(data);
        x.link = first;
        first = x;
        displayNode();
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
    
    void deleteAtFirst() {
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        first = first.link;
        current.link = null;
        displayNode();
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
    
    void deleteAtPosition() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Data : ");
        int pos = sc.nextInt();
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        if (pos == 1) {
            first = first.link;
            return;
        }
        Node current = first;
        while (pos > 2) {
            current = current.link;
            System.out.println(current.data);
            pos--;
        }
        current.link = current.link.link;
        displayNode();
    }
    
    void countNode() {
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        int count = 0;
        while (current != null) {
            current = current.link;
            count++;
        }
        System.out.println("Count  of Node = " + count);
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


