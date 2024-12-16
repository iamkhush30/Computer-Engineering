class Member
{
  String? Name;
  int? Age;
  int? Phone_number;
  String? Address;
  int? Salary;

  void PrintSalary()
  {
    print("Salary:$Salary");
  }
}
class Manager extends Member
{
  String? Department;
  
}
class Employee extends Member
{
  String? Specialization;
}
void main()
{
  Manager m = Manager();

  m.Name = "ABC";
  m.Age = 28;
  m.Phone_number = 1234567890;
  m.Address = "XYZ...xyz";
  m.Salary = 50000;
  m.Department = "Soc";

  print("Manager's Name : ${m.Name}");
  print("Manager's Age : ${m.Age}");
  print("Manager's Phone Number : ${m.Phone_number}");
  print("Manager's Address : ${m.Address}");
  print("Manager's Department : ${m.Department}");
  m.PrintSalary();

  print("");

  Employee e = Employee();
  e.Name = "XYZ";
  e.Age = 20;
  e.Phone_number = 1122334455;
  e.Address = "ABC...abc";
  e.Salary = 30000;
  e.Specialization = "TA";

  print("Employee's Name : ${e.Name}");
  print("Employee's Age : ${e.Age}");
  print("Employee's Phone Number : ${e.Phone_number}");
  print("Employee's Address : ${e.Address}");
  print("Employee's Specialization : ${e.Specialization}");
  e.PrintSalary();
}