import 'dart:io';

void main(){
  stdout.write("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for(int i=1 ; i<=n ;i++){
    if(n%i==0)
      sum+=i;
  }

  if(n==sum)
    stdout.write("$n is Perfect Number");
  else
    stdout.write("$n is not Perfect Number");
}