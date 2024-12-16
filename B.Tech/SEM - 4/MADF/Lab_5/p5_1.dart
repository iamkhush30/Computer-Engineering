/* p5_1 : WAP that prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order.*/

import 'dart:io';

class NumOperation{
  List<int> storenum = [];

  void enterNumber(){
    stdout.write("Enter number : ");
    storenum.add(int.parse(stdin.readLineSync()!));
  }

  void displayNum(){
    for(int i in storenum){
      stdout.write("$i | ");
    }
  }
}

void main(){
  NumOperation numOpe = new NumOperation();
  for(int i=0 ; i<5 ; i++){
    numOpe.enterNumber();
  }

  numOpe.displayNum();
}

