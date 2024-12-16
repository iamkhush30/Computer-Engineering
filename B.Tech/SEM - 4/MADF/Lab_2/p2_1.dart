import 'dart:io';

void main(){
  int n = int.parse(stdin.readLineSync()!);

  if(n>0)
    stdout.write("$n is Positive");

  else
    stdout.write("$n is Negative");
}