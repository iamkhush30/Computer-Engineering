import 'dart:io';

void main(){
  stdout.write("Your Name : ");
  String name = stdin.readLineSync()!;
  stdout.write("Name : $name");
}