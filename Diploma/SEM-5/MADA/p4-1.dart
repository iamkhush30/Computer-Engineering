import 'dart:io';
class Candidate
{
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void GetCandidateDetail()
  {
    print("Enter ID:");
    Candidate_ID = int.parse(stdin.readLineSync()!);

    print("Enter Name:");
    Candidate_Name = stdin.readLineSync()!;

    print("Enter Age:");
    Candidate_Age = int.parse(stdin.readLineSync()!);

    print("Enter Weight:");
    Candidate_Weight = double.parse(stdin.readLineSync()!);

    print("Enter Height:");
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetail()
  {
    print("ID : $Candidate_ID");
    print("Name : $Candidate_Name");
    print("Age : $Candidate_Age");
    print("Weight : $Candidate_Weight");
    print("Height : $Candidate_Height");
  }
}
void main()
{
  Candidate c1 = Candidate();

  c1.GetCandidateDetail();
  c1.DisplayCandidateDetail();
}