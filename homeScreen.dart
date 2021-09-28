import 'package:flutter/material.dart';
import 'package:space_book/home.dart';
import 'package:space_book/profile.dart';
import 'package:space_book/video.dart';

import 'game.dart';
import 'live.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromRGBO(58,76,122,1.0), //Changing this will change the color of the TabBar
          accentColor: Colors.white,
        ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(

          appBar: AppBar(
            //backgroundColor: ,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.message))
            ],
            bottom: TabBar(
              indicatorColor: Colors.amber,
              tabs: [
                Tab(child: Text("Home", style: TextStyle(fontSize: 15.0),),),
                Tab(child: Text("Video", style: TextStyle(fontSize: 15.0),),),
                Tab(child: Text("Game", style: TextStyle(fontSize: 15.0),),),
                Tab(child: Text("Live", style: TextStyle(fontSize: 15.0),),),
                Tab(child: Icon(Icons.account_circle)),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              home(),
              video(),
              game(),
              live(),
              profile(),
            ],
          ),
        ),
      )
    );
  }
}
