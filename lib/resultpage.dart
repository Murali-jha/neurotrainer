import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'HelpPage.dart';
import 'home.dart';

class resultpage extends StatefulWidget {
  int marks;
  int time;
  resultpage({Key key , @required this.marks,this.time}) : super(key : key);
  @override
  _resultpageState createState() => _resultpageState(marks,time);
}

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;
  Random random = new Random();
  int randomNumber;

  generateConcentration(int x,int y){
    setState(() {
      randomNumber = random.nextInt(x) + y;
    });
  }

  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState(){
    assetsAudioPlayer.open(
      Audio("audios/result.mp3"),
    );
    if(marks <= 30){
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks points";
      generateConcentration(40,10);
    }else if(marks > 30 && marks<=55){
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks points";
      generateConcentration(75,45);
    }else{
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks points";
      generateConcentration(97,60);
    }
    super.initState();

  }



  int marks;
  int time;
  _resultpageState(this.marks,this.time);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.help_outline),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HelpApp()));
              }
          ),
        ],
        centerTitle: true,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
    ),),
        title: Text("Result",style: TextStyle(fontFamily: "Quando",fontSize: 26.0),),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Material(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          child: Container(
                            width: 280.0,
                            height: 280.0,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage(
                                  image,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 15.0,
                            ),
                            child: Center(
                              child: Text(
                                   message,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Quando",
                                ),
                              ),
                            )
                        ),

                        Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 15.0,
                            ),
                            child: Center(
                              child: Text(
                                "Total time taken: $time seconds",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Quando",
                                ),
                              ),
                            )
                        ),

                        Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 15.0,
                            ),
                            child: Center(
                              child: Text(
                                "Your Concentration is $randomNumber%",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Quando",
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => homepage(i: 1,),
                      ));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    minWidth: 200.0,
                    height: 45.0,
                    color: Colors.indigoAccent,
                    splashColor: Colors.indigo[700],
                    highlightColor: Colors.indigo[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}