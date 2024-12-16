/* p5_2 : WAP to read 2 list and return list that contains only the elements that are common between them.*/

import 'dart:io';

class NumOperation{
  List<int> storeNum = [];

  void enterNumber(){
    storeNum.add(int.parse(stdin.readLineSync()!));
  }

  void displayNum(){
    for(int i in storeNum){
      stdout.write("$i | ");
    }
  }
}

void main(){
  stdout.write("Enter size of List : ");
  int n = int.parse(stdin.readLineSync()!);

  NumOperation num1 = NumOperation();
  NumOperation num2 = NumOperation();

  List<int> common = [];

  for(int i=0 ; i<n ; i++){
    stdout.write("Enter number for num1 : ");
    num1.enterNumber();
  }

  for(int i=0 ; i<n ; i++){
    stdout.write("Enter number for num2 : ");
    num2.enterNumber();
  }

  for(int i in num1.storeNum){
    if(num2.storeNum.contains(i)){
      common.add(i);
    }
  }

  stdout.write(common);
}

