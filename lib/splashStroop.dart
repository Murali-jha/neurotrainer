import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:stroop_test/programmingpage.dart';
import 'package:stroop_test/quizpage.dart';

class splashStroop extends StatefulWidget {
  String langname;
  splashStroop({Key key,this.langname}):super(key: key);

  @override
  _splashStroopState createState() => _splashStroopState(langname: langname);
}

class _splashStroopState extends State<splashStroop> {

  String langname;
  _splashStroopState({this.langname});
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>getjson(langname)));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Loading....",
                style: TextStyle(
                    fontSize: 55.0,
                    color: Colors.white,
                    fontFamily: "Satisfy"
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  "Choose a color which is used for the word.",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: "Quando"
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SpinKitPulse(
                color: Colors.white,
                size: 120.0,
              )
            ],
          )
      ),
    );
  }
}
