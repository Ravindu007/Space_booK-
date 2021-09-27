import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_book/loginScreen.dart';

class landingPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          color: Color.fromRGBO(58,76,122,1.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(10.0, 750.0, 50.0, 0.0)),
                  InkWell(
                    child: Container(
                      child: Image.asset(
                        "assets/logo_SB.jpg",
                        width: 300.0,
                        height: 300.0,
                      ),
                    ),
                    // onDoubleTap: (){
                    //   Navigator.pop(context, loginScreen());
                    // },
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0)),
                  Text("SPACE BOOK", style: TextStyle(fontSize: 50.0),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
