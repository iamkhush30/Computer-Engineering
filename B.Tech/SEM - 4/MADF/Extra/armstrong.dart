import 'dart:io';

void main(){
  stdout.write("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int temp1 = n,temp2 = n,sum=0,itrationCount=0;

  while(temp1>0){
    temp1 = temp1 ~/ 10;
    itrationCount++;
  }

  while(temp2>0){
    int power = 1;
    for(int j=0 ; j<itrationCount ;j++){
      power *= temp2%10;
    }
    sum += power;
    temp2 = temp2 ~/ 10;
  }

  if(n==sum)
    stdout.write("$n is Armstrong");
  else
    stdout.write("$n is not Armstrong");
}