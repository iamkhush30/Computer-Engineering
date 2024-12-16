void main(){

  List<Map<String,dynamic>> student = [
    {"Name" : "abc","Height" : 180},
    {"Name" : "abc","Height" : 165},
    {"Name" : "abc","Height" : 160}
  ];

  // student.sort((a,b)=> {a["Height"].compareTo(b["Height"]);});
     print(student[1]["Height"].compareTo(student[0]["Height"]));
  print(student);
}