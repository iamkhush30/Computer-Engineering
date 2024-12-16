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

  double p = (a+b+c+d+e)/5;

  if(p<35)
    print("Fail");
  else if(p>=35 && p<45)
    print("Pass");
  else if(p>=45 && p<60)
    print("Second Class");
  else if(p>=60 && p<70)
    print("First Class");
  else
    print("Distinction");
}