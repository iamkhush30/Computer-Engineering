import 'dart:io';

void main(){
  stdout.write("Enter A:");
  int n = int.parse(stdin.readLineSync()!);

  if(isPrime(n: n) == 1)
    stdout.write("$n is Prime number");
  else
    stdout.write("$n is Prime number");
}

int isPrime ({int n=0}){
  bool flag = true;
  for(int i=2 ; i<n ; i++){
    if(n%i==0)
      flag = false;
  }
  if(flag) return 1;
  else return 0;
}