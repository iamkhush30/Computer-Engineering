import 'dart:io';

void main(){
  stdout.write("Enter A:");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter B:");
  int b = int.parse(stdin.readLineSync()!);


  stdout.write("Max number : ${maxnum(a: a,b: b)}");
}

int maxnum ({int a=0, int b=0}){
  return a > b ? a : b;
}