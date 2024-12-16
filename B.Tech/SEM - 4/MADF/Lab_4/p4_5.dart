import 'dart:io';

void main(){
  stdout.write("Enter size of an array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];

  for(int i=0 ; i<n ;i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }

  countOddEven(arr: arr);
}

void countOddEven({List<int>? arr}){
  int evenCount = 0, oddCount = 0;
  for(int i in arr!){
    if(i%2==0) evenCount++;
    else oddCount++;
  }

  print("Number of Odd numbers : $oddCount");
  print("Number of Even numbers : $evenCount");
}