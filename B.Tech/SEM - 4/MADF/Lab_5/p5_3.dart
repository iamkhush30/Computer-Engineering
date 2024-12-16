/* p5_3 : WAP that creates List with following value:“Delhi”, “Mumbai”, “Bangalore”, “Hyderabad” and “Ahmedabad” Replace “Ahmedabad” with “Surat” in above List.*/

import 'dart:io';

class StringList {
  List<String> cityName = ["Delhi", "Mumbai", "Bangalore", "Hyderabad", "Ahmedabad"];

  void replaceValue(){
    cityName[cityName.indexOf("Ahmedabad")] = "Surat";
  }
  void displayList(){
    stdout.write(cityName);
    print("");
  }
}

void main(){
  StringList sl = StringList();

  stdout.write("Before Replace : ");
  sl.displayList();

  sl.replaceValue();

  stdout.write("After Replace : ");
  sl.displayList();
}
