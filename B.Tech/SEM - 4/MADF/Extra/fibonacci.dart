import 'dart:io';

void mian(){
  stdout.write("size of Fibonacci Series = ");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, next;

  while(n>0){
    print(a);

    next=a+b;
    a=b;
    b=next;

    n--;
  }
}