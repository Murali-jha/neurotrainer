import 'package:flutter/material.dart';
import 'package:stroop_test/commonSplash.dart';
import 'package:stroop_test/generalPage.dart';
import 'package:stroop_test/programming.dart';
import 'package:stroop_test/quizpage.dart';
import 'package:stroop_test/splashStroop.dart';

import 'home.dart';

class megaHomePage extends StatefulWidget {
  @override
  _megaHomePageState createState() => _megaHomePageState();
}

class _megaHomePageState extends State<megaHomePage> {

  List<String> images =[
    "https://dl3.cbsistatic.com/catalog/2018/06/24/9e6b0a2a-5b26-480b-8aa4-8886778f2121/imgingest-7514079928221488315.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/417V9cmGNgL.png",
    "https://images-eu.ssl-images-amazon.com/images/I/51raPAhIGJL.png",
    "https://p7.hiclipart.com/preview/57/960/62/computer-icons-online-newspaper-news-media-others.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61JJh+QddmL.png"
  ];

  List<String> description =[
    "Stroop Test",
    "Programming",
    "General",
    "Current Affairs",
    "Did you know?"
  ];

  Widget customcard(String images,String description,int x){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: (){
          debugPrint("Card Tapped");
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            if(x==1){
              return homepage();
            }
            else if(x==2){
              return programmingpage();
            }
            else if(x==3){
              return getjson2("General");
            }
            else if(x==4){
              return getjson2("Current");
            }
            else{
              return getjson2("Do");
            }
          }));
        },
        child: Material(
          //color: Colors.indigoAccent,
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
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image:NetworkImage(images),
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
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.indigo,
          child: ListView(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Center(
                child: Text(
                  "NeuroTrainer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Satisfy"
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              Divider(color: Colors.white,),
              SizedBox(height: 20.0,),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return homepage();
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://dl3.cbsistatic.com/catalog/2018/06/24/9e6b0a2a-5b26-480b-8aa4-8886778f2121/imgingest-7514079928221488315.jpg"),
                ),
                title: Text("Stroop Test",style: TextStyle(fontFamily: "Alike",color: Colors.white,fontSize: 18.0),),
                subtitle: Text("Improves your Concentration",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return programmingpage();
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/417V9cmGNgL.png"),
                ),
                title: Text("Programming",style: TextStyle(fontFamily: "Alike",color: Colors.white,fontSize: 18.0),),
                subtitle: Text("Test Your Programming Skills",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return splashCommon(langname: "General");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://images-eu.ssl-images-amazon.com/images/I/51raPAhIGJL.png"),
                ),
                title: Text("General",style: TextStyle(fontFamily: "Alike",color: Colors.white,fontSize: 18.0),),
                subtitle: Text("Test your General Knowledge",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return splashCommon(langname: "Current");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://p7.hiclipart.com/preview/57/960/62/computer-icons-online-newspaper-news-media-others.jpg"),
                ),
                title: Text("Current Affairs",style: TextStyle(fontFamily: "Alike",color: Colors.white,fontSize: 18.0),),
                subtitle: Text("Be Updated",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return splashCommon(langname: "Do");
                  }));
                },
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/61JJh+QddmL.png"),
                ),
                title: Text("Did you know?",style: TextStyle(fontFamily: "Alike",color: Colors.white,fontSize: 18.0),),
                subtitle: Text("Amazing Facts",style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(30),
        //   ),
        // ),
        title: Text("NeuroTrainer",style: TextStyle(fontFamily: "Quando",fontSize: 26.0),),
      ),
      body: ListView(
        children: [
          customcard(images[0], description[0],1),
          customcard(images[1], description[1],2),
          customcard(images[2], description[2],3),
          customcard(images[3], description[3],4),
          customcard(images[4], description[4],5),
        ],
      ),
    );
  }
}
