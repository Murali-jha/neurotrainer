import 'dart:async';
import 'dart:convert';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroop_test/resultpage.dart';

import 'home.dart';

class getjson2 extends StatelessWidget {
  String langname;
  getjson2(this.langname);
  String assettoload;
  setasset() {
    if (langname == "General") {
      assettoload = "assets/general.json";
    } else if (langname == "Current") {
      assettoload = "assets/current.json";
    }
    else if (langname == "Do") {
      assettoload = "assets/doyouknow.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    setasset();
    return FutureBuilder(
      future:
      DefaultAssetBundle.of(context).loadString(assettoload, cache: false),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading...",
              ),
            ),
          );
        } else {
          return quizpage(mydata: mydata);
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  final List mydata;

  quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  final List mydata;
  _quizpageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  int timer = 30;
  int numberOfQuestionsRemaining = 9;
  String showtimer = "30";

  Map<String, Color> btncolor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  Color timerColor = Colors.green;

  bool canceltimer = false;


  @override
  void initState() {
    starttimer();
    super.initState();
  }

  int total = 30;
  int totalTime = 0;


  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          setState(() {
            totalTime = totalTime + (total-timer);
          });
          nextQuestion();
        } else if (canceltimer == true) {
          t.cancel();
        }
        else {
          timer = timer - 1;
        }

        if(timer<10){
          timerColor = Colors.red;
        }
        showtimer = timer.toString();
      });
    });
  }
  bool isButtonEnabled = true;

  void nextQuestion(){
    setState(() {
      isButtonEnabled = true;
    });
    canceltimer = false;
    timer=30;
    timerColor = Colors.green;
    setState(() {
      if(i<10){
        i++;
      }
      else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return resultpage(marks: marks,time: totalTime,);
        }));
      }
      btncolor["a"] = Colors.indigoAccent;
      btncolor["b"] = Colors.indigoAccent;
      btncolor["c"] = Colors.indigoAccent;
      btncolor["d"] = Colors.indigoAccent;
      numberOfQuestionsRemaining = 10-i;
    });
    starttimer();
  }

  final audioPlayerCorrect = AssetsAudioPlayer();

  final audioPlayerWrong = AssetsAudioPlayer();
  void checkAnswer(String k){
    if(mydata[2][i.toString()] == mydata[1][i.toString()][k]){
      if(isButtonEnabled = true){
        marks = marks+5;
        colortoshow = right;
        setState(() {
          totalTime = totalTime + (total-timer);
          audioPlayerCorrect.open(
            Audio("audios/correctmusic.mp3"),
          );
        });
      }
    }
    else{
      if(isButtonEnabled == true){
        colortoshow = wrong;
        setState(() {
          totalTime = totalTime + (total-timer);
          audioPlayerCorrect.open(
            Audio("audios/wrongmusic.mp3"),
          );
        });
      }
    }
    setState(() {
      btncolor[k] = colortoshow;
      canceltimer = true;
    });

    Timer(Duration(seconds: 1),nextQuestion);
  }

  Widget choiceButton(String k){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
      child: MaterialButton(
        onPressed: () => checkAnswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Alike",
              fontSize: 16.0
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        minWidth: 200.0,
        height: 45.0,
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return WillPopScope(
      onWillPop: (){
        return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text(
                  "Warning",
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                ),
                content: Text(
                    "You Can't Go Back At This Stage.You may loose your achievements"
                ),
                actions: [
                  FlatButton(
                      color: Colors.red,
                      onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                            homepage(i: 1,)), (Route<dynamic> route) => false);
                      },
                      child: Text("Quit!",style: TextStyle(fontSize: 15.0),)
                  ),
                  FlatButton(
                      color: Colors.green,
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Cool",style: TextStyle(fontSize: 15.0),)
                  )
                ],
              );
            }
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "More $numberOfQuestionsRemaining To Go",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  mydata[0][i.toString()],
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    choiceButton('a'),
                    choiceButton('b'),
                    choiceButton('c'),
                    choiceButton('d'),
                  ],
                ),
              ),
              flex: 6,
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text(
                      showtimer,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Times New Roman",
                          color: timerColor
                      ),
                    ),
                  )
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}