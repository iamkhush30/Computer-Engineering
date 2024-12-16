
import java.util.Scanner;

class P66
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice, data;
        boolean loop = true;

        Node n = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for Insert At Last");
            System.out.println("Press 2 for Delete At Last");
            System.out.println("Press 3 for Swap kth element");
            System.out.println("Press 4 for Display");
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
                    n.swapK();
                    break;
                case 4:
                    n.displayNode();
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
    Node last;

    public Node(int data) {
        this.data = data;
        this.link = null;
    }
    
    void insertAtLast(int data) {
        Node x = new Node(data);
        if (first == null) {
            first = last = x;
            displayNode();
            return;
        }
        last.link = x;
        last = x;
        displayNode();
    }

    void deleteAtLast() {
        if (first == null) {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        while (current.link != last) {
            current = current.link;
        }
        last = current;
        last.link = null;
        displayNode();
    }

    void swapK()
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("kth Element:");
        int n = sc.nextInt();

        Node i = first;
        Node k = last;

        while(n != 0)
        {
            i = i.link;

            Node j = i.link;
            while(j.link != k)
            {
                j = j.link;
            }
            k = j;
            n--;
        }
        System.out.println(i.data);
        System.out.println(k.data);

        int swap = i.data;
        i.data = k.data;
        k.data = swap;

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


