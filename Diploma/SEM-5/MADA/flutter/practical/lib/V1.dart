import 'package:flutter/material.dart';
import 'package:untitled/V2.dart';


class MyApp1 extends StatefulWidget
{
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1>
{
  bool passwordob=true;
  dynamic mykey=GlobalKey<FormState>();
  TextEditingController _name=new TextEditingController();
  TextEditingController _email=new TextEditingController();
  TextEditingController _phone=new TextEditingController();
  TextEditingController password=new TextEditingController();
  TextEditingController confirmpassword=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Form(
            key: mykey,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 50,
                shadowColor: Colors.orange,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Image.asset('assets/img/a.jpg',height: 394,width: 500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          controller: _name,
                          validator: (dynamic msg){
                            if(msg.isEmpty)
                            {
                              return 'Please Enter Your Name:';
                            }
                            if(msg.length<6)
                            {
                              return 'Please Enter Minimum 7 Char:';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "User Name",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.man_2_outlined)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          controller: _email,
                          validator: (dynamic msg){
                            if(!RegExp(r'\S+@\S+.\S+').hasMatch(msg))
                            {
                              return 'Please Enter Valid Email:';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.email_rounded)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          controller: _phone,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.phone_android_rounded)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          controller: password,
                          obscureText: passwordob,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.password_rounded),
                              suffixIcon: IconButton(onPressed: (){
                                setState(() {
                                  passwordob=!passwordob;
                                });
                              },icon: Icon(passwordob?Icons.visibility_off:Icons.visibility),)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          controller: confirmpassword,
                          validator: (dynamic msg){
                            if(msg!=password.text)
                            {
                              return 'Please Enter Same Password:';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "Confirm Password",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.password_rounded)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                            width: 200,
                            child: ElevatedButton(onPressed: ()
                            {
                              if(mykey.currentState.validate())
                              {
                                print('dsddddddddddddddd');
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2(name: _name.text, email: _email.text, phone: _phone.text,),));
                              }
                            }, child: Text("Sign UP"))),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
