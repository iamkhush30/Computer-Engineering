
import java.util.Scanner;

class P59
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean copy = true;


        System.out.println("Enter size of First link list:");
        int a = sc.nextInt();
        Node x = new Node(1);
        for(int i=0 ; i<a ; i++)
        {
            x.insertAtLast();
        }
        
        System.out.println("Enter size of Second link list:");
        int b = sc.nextInt();
        Node y = new Node(1);
        for(int i=0 ; i<b ; i++)
        {
            y.insertAtLast();
        }
        if(a==b)
        {
            for(int i=0 ; i<a ; i++)
            {
                if(x.currentNode(i+1)!=y.currentNode(i+1))
                {
                    copy = false;
                    break;
                }
            }
            if(copy)
                System.out.println("Equil link list");
            else
                System.out.println("Not Equl");

        }
        else
        {
            System.out.println("Not Equl");
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

    int currentNode(int pos) 
    {
        if (first == null) 
        {
            System.out.println("Empty Link list");
            return 0;
        }
        Node current = first;
        while (pos > 0) 
        {
            current = current.link;
        }
        return current.data;
    }
}