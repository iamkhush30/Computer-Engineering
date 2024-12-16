import 'dart:io';
void main()
{
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);

  if(a>0)
    print("Positive");

  else if(a<0)
    print("Nagative");
  
  else
    print("unique");
}