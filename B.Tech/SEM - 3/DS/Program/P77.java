import java.util.Scanner;

class P77
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice,data;
        boolean loop = true;

        Node n = new Node(1);

        while (loop) {
            System.out.println("");
            System.out.println("Press 1 for Insert Node");
            System.out.println("Press 2 for Delete Node");
            System.out.println("Press 3 for Search Node");
            System.out.println("Press 4 for Preorder Traversal");
            System.out.println("Press 5 for Inorder Traversal");
            System.out.println("Press 6 for Postorder Traversal");
            System.out.println("Press 7 to Exit");
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
                    System.out.print("Enter Data:");
                    data = sc.nextInt();
                    n.deleteNode(n.root, data);
                    break;
                case 3:
                    System.out.print("Enter Data:");
                    data = sc.nextInt();
                    n.searchNode(n.root,data);
                    break;
                case 4:
                    n.preOrder(n.root);
                    break;
                
                case 5:
                    n.inOrder(n.root);
                    break;
                
                case 6:
                    n.postOrder(n.root);
                    break;

                case 7:
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
        if(root == null)
        {
            root = new Node(data);
            return root;
        }
        else
        {
            if(data < root.key)
            {
                if(root.left == null)
                {
                    root.left = new Node(data);
                }
                else
                {
                    insertNode(root.left, data);
                }
            }
            
            
            if(data > root.key)
            {
                if(root.right == null)
                {
                    root.right = new Node(data);
                }
                else
                {
                    insertNode(root.right, data);
                }
            }
            return root;
        }
    }

    Node deleteNode(Node root, int data)
    {
        if(root==null)
        {
            System.out.println("Node is not available");
        }
        
        else if(root.key > data)
        {
            root.left = deleteNode(root.left, data);    
        }
        else if(root.key < data)
        {
            root.right = deleteNode(root.right, data);
        }
        else
        {
            if(root.left == null)
                return root.right;

            if(root.right == null)
                return root.left;

            Node succ = getSuccessonr(root);
            root.key = succ.key;
            root.right = deleteNode(root.right, succ.key);
        }
        return root;
    }

    Node getSuccessonr(Node root)
    {
        root = root.right;
        while(root!=null && root.left != null) 
        {
            root = root.left;
        }

        return root;
    }

    void searchNode(Node root, int data)
    {
        if(root==null)
            System.out.println(data+" is not Available in Tree");
        
        else if(data == root.key)
            System.err.println(data+" is Available in Tree");

        else if(data > root.key && root.right != null)
            searchNode(root.right, data);
        
        else
            searchNode(root.left, data);
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