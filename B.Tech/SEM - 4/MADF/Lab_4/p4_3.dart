import 'dart:io';

void main(){
  stdout.write("Enter A:");
  int n = int.parse(stdin.readLineSync()!);

  fibonacciSeries(n: n);
}

void fibonacciSeries ({int n=0}){
  int a=0,b=1;
  do{
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }while(a<n);
}