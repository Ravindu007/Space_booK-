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

          drawer: Drawer(
            child: Scaffold(

              body: Container(
                width: double.infinity,
                color: Color.fromRGBO(58,76,122,1.0),
                child: Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //user account
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left:20.0),
                        child: UserAccountsDrawerHeader(
                          accountName: Text("Phill Johnes"),
                          accountEmail: Text("phill98johnes@gmail.com"),
                          currentAccountPicture: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                            AssetImage("assets/profile.jpg"),
                          ),
                        ),
                      ),


                      //feature 1
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.videogame_asset_rounded),
                            Text("Space-Game")
                          ],
                        ),
                      ),

                      //feature 2
                      Container(
                        margin: EdgeInsets.only(top: 30.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.event_note),
                            Text("Space-News")
                          ],
                        ),
                      ),


                      //feature 3
                      Container(
                        margin: EdgeInsets.only(top: 30.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.school),
                            Text("Space-Learn")
                          ],
                        ),
                      ),

                      //feature 4
                      Container(
                        margin: EdgeInsets.only(top: 30.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.settings),
                            Text("Settings")
                          ],
                        ),
                      ),

                      //feature 5
                      Container(
                        margin: EdgeInsets.only(top: 30.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.notifications),
                            Text("Notification")
                          ],
                        ),
                      ),

                      //feature 6
                      Container(
                        margin: EdgeInsets.only(top: 30.0, left:20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        width: 165.0,
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.save_alt),
                            Text("Saved")
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            )
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
