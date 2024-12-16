import 'dart:io';
void main()
{
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter C:");
  int c = int.parse(stdin.readLineSync()!);

  if(a > b)
  {
    if(a>c)
      print("A is max");
    else
      print("C is macx");
  }
  else
  {
    if(b>c)
      print("B is max");
    else
      print("C is macx");
  }
}