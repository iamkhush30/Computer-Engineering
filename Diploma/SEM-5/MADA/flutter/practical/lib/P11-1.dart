import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  List<Map<String, dynamic>> user = [{'Name':'A','Surname':'X','Birthdate':'13/07/2000','City':'Rajkot'},
                                     {'Name':'B','Surname':'Y','Birthdate':'11/01/2003','City':'Morbi'},
                                     {'Name':'C','Surname':'Z','Birthdate':'28/02/2001','City':'Jamnagar'}];

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("p4-2")),
          body: ListView.builder(
              itemCount: user.length,
              itemBuilder: (BuildContext context,int index)
              {
                return Column(
                  children: [
                    Text('Name: ${user[index]['Name']}'),
                    Text('Surname: ${user[index]['Surname']}'),
                    Text('Birthdate: ${user[index]['Birthdate']}'),
                    Text('City: ${user[index]['City']}'),
                    Text(''),
                  ],
                );
              }
          ),
        )
    );
  }
}