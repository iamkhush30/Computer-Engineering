
import java.util.Scanner;

class P57
{
    public static void main(String[] args) {
        Node n = new Node(1);

        n.countNode();
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
    
    void countNode() 
    {
        if (first == null) 
        {
            System.out.println("Empty Link list");
            return;
        }
        Node current = first;
        int count = 0;
        while (current != last) 
        {
            current = current.link;
            count++;
        }
        System.out.println("Count of Node = " + count);
    }
}


