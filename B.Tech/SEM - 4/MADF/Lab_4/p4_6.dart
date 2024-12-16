import 'dart:io';

void main(){
  stdout.write("Enter size of an array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<String> name = [];

  print("Enter name : ");
  for(int i=0 ; i<n ;i++){
    name.add(stdin.readLineSync()!);
  }

  List<int> height = [];

  print("Enter Height : ");
  for(int i=0 ; i<n ;i++){
    height.add(int.parse(stdin.readLineSync()!));
  }

  sortArr(name: name,height: height);
}

void sortArr({required List<String> name,required List<int> height}) {
  for (int i = 0; i < name.length; i++) {
    for (int j = 0; j < name.length; j++) {
      if (height[i] > height[j]) {
        String tempstr = name[i];
        int tempint = height[i];

        name[i] = name[j];
        height[i] = height[j];

        name[j] = tempstr;
        height[j] = tempint;
      }
    }
  }

  print(name);
}