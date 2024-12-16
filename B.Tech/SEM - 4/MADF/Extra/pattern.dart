import 'dart:io';

void main(){
  stdout.write("N = ");
  int n = int.parse(stdin.readLineSync()!);
  for(int i=0 ; i<n ;i++) {
    for(int j=0 ; j<n-i ; j++) {
      stdout.write("* ");
    }
    for(int j=0 ; j<i*2 ; j++) {
      stdout.write("  ");
    }
    for(int j=0 ; j<n-i ; j++) {
      stdout.write("* ");
    }
    print("");
  }
}