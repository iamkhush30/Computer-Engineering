/* p5_4 : WAP to create and read phonebook dictionary.*/

import 'dart:io';

class PhoneBook{
  List<Map<String,dynamic>> dictionary = [];

  void addContact(Map<String, dynamic> contact){
    dictionary.add(contact);
  }

  void displayContact(){
    print(dictionary);
  }
}

void main(){
  PhoneBook pb = PhoneBook();

  stdout.write("Enter number of Contact to Enter :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0 ; i<n ; i++){
    stdout.write("Enter Name:");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Phone Number:");
    int number = int.parse(stdin.readLineSync()!);

    Map<String,dynamic> contact = {"Name" : name,"Number" : number};

    pb.addContact(contact);
  }

  pb.displayContact();
}
