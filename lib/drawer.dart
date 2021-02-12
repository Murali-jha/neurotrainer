import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share/share.dart';
import 'package:stroop_test/programming.dart';

import 'commonSplash.dart';
import 'home.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      width: 270.0,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: Image.asset(
                  "images/imagetext.png",
                  width: 110.0,
                  height: 110.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "NeuroTrainer",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Satisfy",
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return homepage();
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://dl3.cbsistatic.com/catalog/2018/06/24/9e6b0a2a-5b26-480b-8aa4-8886778f2121/imgingest-7514079928221488315.jpg"),
                ),
                title: Text(
                  "Stroop Test",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle: Text(
                  "Improves your Concentration",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return splashCommon(langname: "Memory");
                      }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://appoftheday.downloadastro.com/wp-content/uploads/2020/11/logo_512x512.png"),
                ),
                title: Text(
                  "Memory Game",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle:
                Text("Challenge Your Memory", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return programmingpage();
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://images-na.ssl-images-amazon.com/images/I/417V9cmGNgL.png"),
                ),
                title: Text(
                  "Programming",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle: Text("Test Your Programming Skills",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return splashCommon(langname: "General");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://images-eu.ssl-images-amazon.com/images/I/51raPAhIGJL.png"),
                ),
                title: Text(
                  "General",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle: Text("Test your General Knowledge",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return splashCommon(langname: "Current");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://p7.hiclipart.com/preview/57/960/62/computer-icons-online-newspaper-news-media-others.jpg"),
                ),
                title: Text(
                  "Current Affairs",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle:
                    Text("Be Updated", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return splashCommon(langname: "Do");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://images-na.ssl-images-amazon.com/images/I/61JJh+QddmL.png"),
                ),
                title: Text(
                  "Did you know?",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                subtitle: Text("Amazing Facts",
                    style: TextStyle(color: Colors.white)),
              ),
              Divider(color: Colors.white,),
              ListTile(
                onTap: () {

                },
                leading: Icon(
                    Icons.leaderboard
                ),
                title: Text(
                  "LeaderBoard",
                ),
                subtitle: Text(
                  "Coming Soon"
                ),
              ),
              ListTile(
                onTap: () {
                  final RenderBox box = context.findRenderObject();
                  Share.share('Hey I am enjoying using NeuroTrainer app.To download this app use below link. \n https://play.google.com/store/apps/details?id=com.muralijha.neuro_trainer');
                },
                leading: Icon(
                    Icons.share
                ),
                title: Text(
                  "Share",
                ),
              ),
              ListTile(
                  onTap: () {
                    return LaunchReview.launch(
                      androidAppId: "com.muralijha.neuro_trainer",
                    );
                  },
                  leading: Icon(
                      Icons.star_rate_outlined
                  ),
                  title: Text(
                    "Rate the app",
                  )
              ),
              ListTile(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  //   return HelpApp();
                  // }));
                },
                leading: Icon(
                    Icons.help_outline_sharp
                ),
                title: Text(
                  "Help",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
