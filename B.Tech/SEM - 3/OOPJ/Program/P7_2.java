import java.util.*;
class P7_2 
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        Book_publication b2 = new Book_publication();
        Paper_publication b3 = new Paper_publication();

        System.out.print("Author name of Book : ");
        b2.setAuthor(sc.next());

        System.out.print("Enter Book Name : ");
        b2.settitle(sc.next());

        System.out.print("Author name of Paper : ");
        b3.setAuthor(sc.next());

        System.out.print("Enter Paper Name : ");
        b3.settitle(sc.next());


        System.out.println("----------Book Detail----------");
        System.out.println("Book Author Name : "+b2.getAuthor());
        System.out.print("Book Publication Name = "+b2.gettitle());

        System.out.println("----------Paper Detail----------");
        System.out.println("Paper Author Name : "+b3.getAuthor());
        System.out.print("Paper Publication Name = " + b3.gettitle());
        sc.close();
    }
}


class Book
{
    private String author_name;

    void setAuthor(String name)
    {
        this.author_name = name;
    }

    String getAuthor()
    {
        return author_name;
    }
}

class Book_publication extends Book
{
    private String title;
    void settitle(String name)
    {
        this.title = name;
    }

    String gettitle()
    {
        return title;
    }
}

class Paper_publication extends Book_publication
{
    private String title;
    void settitle(String name)
    {
        this.title = name;
    }

    String gettitle()
    {
        return title;
    }
}