class P7_4 {
    public static void main(String[] args) {
        DemoSetFinal ds = new DemoSetFinal();

        System.out.println("Values of A in Main mathod : " + ds.a);
        ds.printFinal();

        // ds.a = 20;

        ds.printFinal();
    }
}

class DemoSetFinal {
    final int a = 10;

    final void printFinal()
    {
        System.out.println("Value of A : " + a);
    }
}
