//import 'dart:html';

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [

              ///Blend Image with Scaffold
              Image.asset('assets/team.jpg'),
              Spacer(),
              Text(
                  "Welcome to kaziManager for Teams",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child:Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        //autofillHints: ["Email"],
                        decoration: const InputDecoration(
                          hintText: "Email"
                        ),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please Enter Your Email address";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        //autofillHints: ["Email"],
                        decoration: const InputDecoration(
                            hintText: "Password",
                        ),
                        obscureText: true,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please Enter Your password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30,),

                      //Make button
                      Container(
                        height: 50.0,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.brown)
                              )
                            )
                          ),
                          onPressed: (){

                          },
                          child: Text(
                            "SignIn",
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 10,),
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                      ),
                      SizedBox(height: 20,),




                    ],
                  ),
                ),
              )
              ///Add the forms here
              ///email and password

            ],
          ),
        ),
      )
    );
  }
}
