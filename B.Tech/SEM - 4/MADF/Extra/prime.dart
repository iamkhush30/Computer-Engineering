import 'dart:io';

void main(){
  stdout.write("N = ");
  int n = int.parse(stdin.readLineSync()!);

  bool flag = true;

  for(int i=2 ; i<n ;i++){
    if(n%i==0){
      flag = false;
      break;
    }
  }
  if(flag){
    stdout.write("$n is prime number.");
  }
  else{
    stdout.write("$n is not prime number.");
  }
}