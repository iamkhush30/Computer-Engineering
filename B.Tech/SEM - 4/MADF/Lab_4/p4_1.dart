import 'dart:io';

void main(){
  stdout.write("Enter P:");
  int p = int.parse(stdin.readLineSync()!);

  stdout.write("Enter R:");
  int r = int.parse(stdin.readLineSync()!);

  stdout.write("Enter T:");
  int t = int.parse(stdin.readLineSync()!);

  stdout.write("Simple Interrest : ${simpleInterest(p: p,r: r,t: t)}");
}

double simpleInterest ({int p=0, int r=0, int t=0}){
  return ((p*r*t)/100);
}