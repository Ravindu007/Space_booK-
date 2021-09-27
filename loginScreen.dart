import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(58,76,122,1.0),
        body: Container(
          child: Column(
            children: [
              //image
              Container(
                margin: const EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 0.0),
                child: Image.asset(
                          "assets/logo_SB.jpg",
                          width: 200.0,
                          height: 200.0,
                        ),
              ),

              //middle login box
              SingleChildScrollView(
                reverse: true,
                child: Container(
                    margin: const EdgeInsets.fromLTRB(40.0,25.0, 40.0, 0.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                    //decoration used to decorate the container
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(157, 165, 189, 100),
                      borderRadius: new BorderRadius.circular(16.0),
                    ),
                    height: 330.0,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: "User Name or Email",
                                                        labelStyle: TextStyle(fontWeight:FontWeight.bold)),
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Password",
                                                      labelStyle: TextStyle(fontWeight:FontWeight.bold)),
                        ),

                        //login button
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.only(left: 10.0, top: 60.0),
                          child: RaisedButton(
                            color: Color.fromRGBO(58,76,122,1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                             onPressed: (){},
                             child: Text("Login", style: TextStyle(color: Colors.white),),

                          ),
                        ),
                      ],
                    ),
                ),
              ),

              // forget password link
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 250.0),
                child: Row(
                  children: [
                    Text("Forget password", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),

              //sign up with SPACE BOOK button
              Container(
                width: 250.0,
                margin: EdgeInsets.only(left: 10.0, top: 60.0),
                child: RaisedButton(
                  color: Color.fromRGBO(157, 165, 189, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                  onPressed: (){},
                  child: Text("Sign up with SPACE BOOK", style: TextStyle(fontWeight: FontWeight.bold),),

                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
