import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroop_test/HelpPage.dart';
import 'package:stroop_test/drawer.dart';
import 'package:stroop_test/splashStroop.dart';

class homepage extends StatefulWidget {
  int i;
  homepage({Key k,this.i}):super(key: k);
  @override
  _homepageState createState() => _homepageState(i: i);
}

class _homepageState extends State<homepage> {

  int i;
  _homepageState({this.i});
  List<String> images =[
    "images/level1.png",
    "images/level2.png",
    "images/level3.png",
    "images/level4.png",
    "images/level5.png"
  ];

  List<String> description =[
    "Let's begin with simple challenge",
    "Ok! I am ready for basic challenge",
    "I can beat time now",
    "I can beat everyone now",
    "No one can beat my concentration"
  ];

  Widget customcard(String langname,String images,String description){
    return Padding(
        padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
      child: InkWell(
        onTap: (){
          debugPrint("Card Tapped");
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
            return splashStroop(langname: langname,);
          }));
        },
        child: Material(
          //color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(20.0),
          elevation: 10.0,
          color: Colors.grey[800],
          child: Container(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(300.0),
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            images
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Quando",
                      //color: Colors.white
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(i!=1) {
      assetsAudioPlayer.open(
        Audio("audios/backgroundmusic.mp3"),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: (){
        return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text(
                  "Warning",
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.0),
                ),
                content: Text(
                    "Do you really want to exit!"
                ),
                actions: [
                  FlatButton(
                      color: Colors.red,
                      onPressed: (){
                        SystemNavigator.pop();
                      },
                      child: Text("Yes",style: TextStyle(fontSize: 15.0),)
                  ),
                  FlatButton(
                      color: Colors.green,
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("No",style: TextStyle(fontSize: 15.0),)
                  )
                ],
              );
            }
        );
      },
      child: Scaffold(
        drawer: DrawerApp(),
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: Text("Stroop Test",style: TextStyle(fontFamily: "Quando",fontSize: 22.0),),
          actions: [
            IconButton(
                icon: Icon(Icons.help_outline),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HelpApp()));
                }
            ),
          ],
        ),
        body: ListView(
          children: [
            customcard("Python", images[0], description[0]),
            customcard("Java", images[1], description[1]),
            customcard("Javascript", images[2], description[2]),
            customcard("C++", images[3], description[3]),
            customcard("Linux", images[4], description[4]),
          ],
        ),
      ),
    );
  }
}
