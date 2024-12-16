import 'dart:io';

void main(){
  stdout.write("Subject - A : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Subject - B : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Subject - C : ");
  int c = int.parse(stdin.readLineSync()!);

  stdout.write("Subject - D : ");
  int d = int.parse(stdin.readLineSync()!);

  stdout.write("Subject - E : ");
  int e = int.parse(stdin.readLineSync()!);


  stdout.write("Percentage : ${((a+b+c+d+e)/500)*100}");
}