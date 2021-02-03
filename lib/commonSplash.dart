import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:stroop_test/generalPage.dart';

class splashCommon extends StatefulWidget {
  String langname;
  splashCommon({Key key,this.langname}):super(key: key);

  @override
  _splashCommonState createState() => _splashCommonState(langname: langname);
}

class _splashCommonState extends State<splashCommon> {

  String langname;
  _splashCommonState({this.langname});
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>getjson2(langname)));
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
                  "Questions Get Updated In Every Two Days",
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
              SpinKitRipple(
                color: Colors.white,
                size: 120.0,
              )
            ],
          )
      ),
    );
  }
}
