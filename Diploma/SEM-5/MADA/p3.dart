import 'dart:io';
void main()
{
  print("Sub A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Sub B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Sub C:");
  int c = int.parse(stdin.readLineSync()!);

  print("Sub D:");
  int d = int.parse(stdin.readLineSync()!);

  print("Sub E:");
  int e = int.parse(stdin.readLineSync()!);

  print("${(a+b+c+d+e)/5}%");
}