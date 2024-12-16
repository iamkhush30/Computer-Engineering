import 'dart:io';

void main(){
  stdout.write("Enter size of an array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];

  for(int i=0 ; i<n ;i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }

  int count = 0;

  for(int i in arr){
    while(arr.contains(i)){
      arr.remove(i);
    }
    count++;
  }

  print("Count : $count");
}

void countDistinctNum({required List<int> arr}) {

}