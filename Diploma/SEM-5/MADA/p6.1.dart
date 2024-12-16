import 'dart:io';
void main()
{
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter your choice");
  String c = stdin.readLineSync()!;

  if(c=="+")
    print("Add = ${a+b}");

  else if(c=="-")
    print("Add = ${a-b}");

  else if(c=="*")
    print("Add = ${a*b}");

  else if(c=="/")
    print("Add = ${a/b}");

  else
    print("incorrect chpoice");
}