import 'dart:io';
void main()
{
  print("Weight:");
  double w = double.parse(stdin.readLineSync()!) * 0.45359237;

  print("hight:");
  double h = double.parse(stdin.readLineSync()!) * 0.0254;

  print("BMI = ${w/(h*h)}");
}