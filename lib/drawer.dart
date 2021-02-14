import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share/share.dart';
import 'package:stroop_test/memorygame.dart';
import 'package:stroop_test/programming.dart';

import 'HelpPage.dart';
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
                    return homepage(i: 1,);
                  }));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://image.winudf.com/v2/image/dGpheS5zdHJvb3BfaWNvbl8xNTE1MDAyNzI3XzA3OA/icon.png?w=170&fakeurl=1"),
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
                        return MemoryGame();
                      }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://is5-ssl.mzstatic.com/image/thumb/Purple7/v4/4e/2d/69/4e2d697e-5589-9fab-a9ac-24337b091102/source/512x512bb.jpg"),
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
                      "https://i.pinimg.com/originals/93/d3/e3/93d3e31639a4d07613de9dccdc8bd5e8.png"),
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
                      "https://st.depositphotos.com/1010751/4379/v/600/depositphotos_43790977-stock-illustration-vector-head-gears-abstraction-of.jpg"),
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
                      "https://media.istockphoto.com/vectors/did-you-know-text-on-a-fluid-trendy-shape-with-geometric-elements-and-vector-id1155336535?k=6&m=1155336535&s=612x612&w=0&h=oW4-w22rKp_rVHqitBP4-FTwd3a4lXfv5KUwF3qxJuA="),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return HelpApp();
                  }));
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
