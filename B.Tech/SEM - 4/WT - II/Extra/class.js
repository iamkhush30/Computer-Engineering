class ClassDemo{
    constructor(a,b){
        this.a = a;
        this.b = b;
    }

    printVariable(){   
        console.log("a = ",this.a);
        console.log("b = ",this.b);
    }

}

const obj = new ClassDemo(10,20)

obj.printVariable()