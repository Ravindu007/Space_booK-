import 'package:flutter/material.dart';
import 'package:space_book/loginScreen.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/doodle1.jpg"),
              fit: BoxFit.cover,
             ),
            ),

          child: Column(
            children: [
              //image
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  "assets/logo_SB.jpg",
                  width: 1500.0,
                  height: 150.0,
                ),
              ),

              //sign up box
              Container(
                height: 450.0,
                margin: const EdgeInsets.fromLTRB(40.0,25.0, 40.0, 0.0),
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                decoration: BoxDecoration(
                  color: Color.alphaBlend(Color.fromRGBO(157, 165, 189, 100), Colors.white),
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "User Name",
                        labelStyle: TextStyle(fontWeight:FontWeight.bold)
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                          labelStyle: TextStyle(fontWeight:FontWeight.bold)
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                          labelStyle: TextStyle(fontWeight:FontWeight.bold)
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email address",
                          labelStyle: TextStyle(fontWeight:FontWeight.bold)
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                          labelStyle: TextStyle(fontWeight:FontWeight.bold)
                      ),
                    ),

                    //signup button
                    Container(
                      width: 120.0,
                      margin: EdgeInsets.only(left: 10.0, top: 60.0),
                      child: RaisedButton(
                        color: Color.fromRGBO(58,76,122,1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                return loginScreen();
                            }
                          ));
                        },
                        child: Text("Sign -up", style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Image.asset("assets/instagram.png", width: 50.0, height: 50.0,),
                    Image.asset("assets/google.png", width: 50.0, height: 50.0,),
                    Image.asset("assets/facebook.png", width: 70.0, height: 70.0,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
