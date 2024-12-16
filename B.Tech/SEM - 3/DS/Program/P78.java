import java.util.Scanner;

class P78
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice,data;
        boolean loop = true;

        Node n = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for Insert Node");
            System.out.println("Press 2 for Preorder Traversal");
            System.out.println("Press 3 for Inorder Traversal");
            System.out.println("Press 4 for Postorder Traversal");
            System.out.println("Press 5 to Exit");
            System.out.println("");

            System.out.print("Enter Your Choice : ");
            choice = sc.nextInt();

            switch(choice) 
            {
                case 1:
                    System.out.print("Enter Data:");
                    data = sc.nextInt();
                    n.root = n.insertNode(n.root,data);
                    break;

                case 2:
                    n.preOrder(n.root);
                    break;
                
                case 3:
                    n.inOrder(n.root);
                    break;
                
                case 4:
                    n.postOrder(n.root);
                    break;

                case 5:
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

    int key;
    Node left;
    Node right;
    Node root;

    public Node(int key) {
        this.key = key;
        this.left = null;
        this.right = null;
    }

    Node insertNode(Node root,int data)
    {
        Node newNode = new Node(data);

        if(root == null)
        {
            root = newNode;
            return root;
        }
        else
        {
            if(data < root.key)
                root.left = insertNode(root.left,data);

            else if(data > root.key)
                root.right = insertNode(root.right,data);

            return root;
        }
    }

    void preOrder(Node root)
    {
        if(root != null)
        {
            System.out.print(root.key + " | ");
            preOrder(root.left);
            preOrder(root.right);
        }
    }

    void inOrder(Node root)
    {
        if(root != null)
        {
            preOrder(root.left);
            System.out.print(root.key + " | ");
            preOrder(root.right);
        }
    }
    
    void postOrder(Node root)
    {
        if(root != null)
        {
            preOrder(root.left);
            preOrder(root.right);
            System.out.print(root.key + " | ");
        }
    }

}