/* p5_6 : WAP to accept n numbers in an array. Display the sum of all the numbers which are divisible by either 3 or 5.*/

import 'dart:io';

class NumberList{
  List<int> storenum = [];

  void enterNumber(){
    stdout.write("Enter number : ");
    storenum.add(int.parse(stdin.readLineSync()!));
  }
}

void main(){
  NumberList nl = NumberList();

  int sum = 0;

  stdout.write("Enter size of List : ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0 ; i<n ; i++){
    nl.enterNumber();
  }

  for(int i in nl.storenum){
    if(i%3==0 || i%5==0)
      sum += i;
  }

  print("Sum : $sum");
}