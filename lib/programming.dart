import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroop_test/drawer.dart';
import 'package:stroop_test/programmingpage.dart';


class programmingpage extends StatefulWidget {
  @override
  _programmingState createState() => _programmingState();
}

class _programmingState extends State<programmingpage> {

  List<String> images =[
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
  ];

  List<String> description =[
    "Python",
    "Java",
    "C",
    "C++",
  ];

  Widget customcard(String langname,String images,String description){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: (){
          debugPrint("Card Tapped");
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
            return getjson1(langname);
          }));
        },
        child: Material(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(20.0),
          elevation: 10.0,
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
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
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
          actions: [
            IconButton(
                icon: Icon(Icons.help_outline),
                onPressed: (){

                }
            ),
          ],
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: Text("Programming",style: TextStyle(fontFamily: "Quando",fontSize: 26.0),),
        ),
        body: ListView(
          children: [
            customcard("Python", images[0], description[0]),
            customcard("Java", images[1], description[1]),
            customcard("Linux", images[2], description[2]),
            customcard("C++", images[3], description[3]),
          ],
        ),
      ),
    );
  }
}
