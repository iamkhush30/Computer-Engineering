import 'dart:io';

void main(){
  int choice;

  ListCRUD lc = ListCRUD();

  while(true){
    print("\nEnter 1 for Add a Person");
    print("Enter 2 for Remove a Person");
    print("Enter 3 for update Information of a person");
    print("Enter 4 for Search for Person");
    print("Enter 5 for Display Person List");
    print("Enter 6 for Exit \n");

    stdout.write("Enter choice:");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1:
        stdout.write("Enter name:");
        String name = stdin.readLineSync()!;

        stdout.write("Enter age:");
        int age = int.parse(stdin.readLineSync()!);
        lc.addElement(name: name, age: age);
        break;

      case 2:
        stdout.write("Enter name or an age of a Person:");
        String x = stdin.readLineSync()!;
        if (lc.removeElement(x: x)!) stdout.write("Person deleted");
        else stdout.write("Person does not exist");
        break;

      case 3:
        stdout.write("Enter Old name:");
        String oldName = stdin.readLineSync()!;

        stdout.write("Enter New name:");
        String name = stdin.readLineSync()!;

        stdout.write("Enter New age:");
        int age = int.parse(stdin.readLineSync()!);
        lc.updateElement(oldName: oldName,name: name,age: age);
        break;

      case 4:
        lc.searchElement();
        break;

      case 5:
        lc.displayList();
        break;

      case 6:
        exit(0);
    }
  }
}

class ListCRUD{
  List<Map<String,dynamic>> list =  [];

  void addElement({required String name,required int age}){

    Map<String,dynamic> person = {"Name" : name , "Age" : age};

    list.add(person);
  }

  bool? removeElement({required dynamic x}){

    for(var element in list){
      if(element.containsValue(x)){
        list.removeWhere((element) => element["Name"]==x || element["Age"]==int.parse(x));
        return true;
      }
      else{
        return false;
      }
    }
    return null;
  }


  void updateElement({required String oldName,String? name,int? age}){

    if(name == null){
      name  = list[list.indexWhere((element) => element["Name"]==oldName)]["Name"];
    }
    else if(age == null){
      age = list[list.indexWhere((element) => element["Name"]==oldName)]["Age"];
    }

    list[list.indexWhere((element) => element["Name"]==oldName)] = {"Name":name,"Age":age};
  }

  void searchElement(){
    stdout.write("Enter name or an age of a Person:");
    String x = stdin.readLineSync()!;

    list.forEach((element) => {
      if (element["Name"]==x || element["Age"]==int.parse(x)){
        print(element)
      }
    });
  }

  void displayList(){
    stdout.write("Value of list:");
    list.forEach((element) { stdout.write("\nName : ${element["Name"]} || Age : ${element["Age"]}"); });
    print("");
  }
}