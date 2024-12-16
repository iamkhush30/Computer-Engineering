/* p5_5 : WAP to find friends detail by their name using dictionary. (Create local dictionary and search from it using Map<String,Object?> & Model Class). */

import 'dart:io';

class FriendDetail{
  Map<String,dynamic> friend = {};

  void addFriend(){
    stdout.write("Enter Friend Name:");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Friend Phone Number:");
    int number = int.parse(stdin.readLineSync()!);

    friend.addAll({"Name" : name, "Number" : number});
  }
}

void main(){
  List<FriendDetail> friendList = [];

  stdout.write("Enter number of friend to Enter :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0 ; i<n ; i++){
    FriendDetail friend = FriendDetail();
    friend.addFriend();

    friendList.add(friend);
  }

  for(int i=0 ; i<n ; i++){
    for(var i in friendList){
      print("");
      stdout.write(i.friend);
    }
  }
}
