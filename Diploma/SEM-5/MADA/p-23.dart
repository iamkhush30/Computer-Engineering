import 'dart:io';
void insert(List <String> name,List <int> age,List <String> hobby)
{
  print("Enter Name:");
  String n = stdin.readLineSync()!;
  print("Enter Age:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter Hobby:");
  String h = stdin.readLineSync()!;
  
  name.add(n);
  age.add(a);
  hobby.add(h);
}
void display(List <String> name,List <int> age,List <String> hobby)
{
  print(name);
  print(age);
  print(hobby);
}
void main()
{
  List <String> name = [];
  List <int> age = [];
  List <String> hobby = [];
  
  insert(name,age, hobby);
  
  display(name,age, hobby);
}
