import 'dart:io';

void main(){
  stdout.write("Fahrenheit : ");
  int f = int.parse(stdin.readLineSync()!);

  stdout.write("Celsius : ${(f - 32) * (5/9)}");
}