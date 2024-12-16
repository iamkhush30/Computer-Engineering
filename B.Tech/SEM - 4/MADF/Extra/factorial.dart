import 'dart:io';

void main(){
  stdout.write("N = ");
  int n = int.parse(stdin.readLineSync()!);

  int fact = 1;

  while(n>0){
    fact *= n;
    n--;
  }

  stdout.write("factorial = $fact");

}