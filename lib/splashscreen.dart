import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:stroop_test/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homepage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black45,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NeuroTrainer",
              style: TextStyle(
                  fontSize: 55.0,
                  color: Colors.white,
                  fontFamily: "Satisfy"
              ),
            ),
            Text(
              "Challenge yourself!",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: "Quando"
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SpinKitDoubleBounce(
              color: Colors.white,
              size: 80.0,
            )
          ],
        )
      ),
    );
  }
}
