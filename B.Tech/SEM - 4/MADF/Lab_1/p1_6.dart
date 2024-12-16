import 'dart:io';

void main(){
  stdout.write("Height(inches) : ");
  double h = double.parse(stdin.readLineSync()!)*0.0254;

  stdout.write("Weight(pound) : ");
  double w = double.parse(stdin.readLineSync()!)*0.45359237;

  stdout.write("BMI : ${w/(h*h)}");
}