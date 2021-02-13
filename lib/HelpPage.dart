import 'package:flutter/material.dart';

class HelpApp extends StatefulWidget {
  @override
  _HelpAppState createState() => _HelpAppState();
}

class _HelpAppState extends State<HelpApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to use this app?",style: TextStyle(fontFamily: "Quando",fontSize: 22.0),),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0)
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Stroop Test",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("The game is so simple , what you have to do is to choose the correct option out of given four."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("Note: The colour of the word shown not the word shown!!"),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("So just select the level you think you can pass then go for it!!... Best of luck!!"),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Memory Game",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: Text("Select Two same images if you select wrong image then you will loose your points."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("It will sharp your memory.So challenge yourself."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Programming",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: Text("Here Just Select the correct Answer."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("It will improve your programming skills which includes the languages like python, java, C, C++. It will allow you to test your knowledge of programming "),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("All other Games",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: Text("Here Just Select the correct Answer.But Remember questions are not that direct."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("Like every other test it will test your General Knowledge,Current Affairs,Amazing Facts and will allow you to remember the facts that you cannot. "),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              SizedBox(
                height: 10.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
