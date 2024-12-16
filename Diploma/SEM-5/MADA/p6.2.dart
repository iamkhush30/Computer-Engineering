import 'dart:io';
void main()
{
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter your choice");
  String c = stdin.readLineSync()!;

  switch (c) 
  {
    case "+":
      print("Add = ${a+b}");break;
    
    case "-":
      print("Add = ${a+b}");break;
    
    case "*":
      print("Add = ${a+b}");break;
    
    case "/":
      print("Add = ${a+b}");break;

    default:print("incorrect chpoice");
  }
}