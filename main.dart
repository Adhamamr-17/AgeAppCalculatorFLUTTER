import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var black = Colors.black;

  var white = Colors.white;

  var blue = Colors.blue;

  var green = Colors.green;

  var mycontroller = TextEditingController();
  var str = 0;

  var str2;

  //birth(var birthyear) {
  //  var age = DateTime.now().year - birthyear;
    //return age;
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Fisrt App"),
        backgroundColor: green,
      ),
      body: Container(
        height: double.infinity,
        color: white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color:black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2 , color: black),
                      borderRadius: BorderRadius.circular(60.0)
                          
                    ),
                  //  fillColor: black,
                  //  filled: true,
                    labelText: "Birth Year ",
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        color: black),
                    hintText: "Enter your Birth Year",
                    hintStyle: TextStyle(fontSize: 15, color: black),
                    icon: Icon(Icons.ac_unit_rounded, color: Colors.red),
                  ),
                  controller: mycontroller,
                  keyboardType: TextInputType.number,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    str = int.parse(mycontroller.text);
                    str = DateTime.now().year - str;
                  });
                },
                child: Text("Calculate",
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
                textColor: Colors.black87,
                padding: EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: black)),
                disabledColor: Colors.black87,
                color: Colors.yellow,
              ),
              Container(
                child: Text(
                  "Your age is $str",
                  style: TextStyle(
                      fontSize: 30, fontStyle: FontStyle.italic, color: black),
                ),
              ),
              SizedBox(height: 400),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (black == Colors.black) {
                      black = Colors.white;
                    } else {
                      black = Colors.black;
                    }
                    if (white == Colors.white) {
                      white = Colors.black;
                    } else {
                      white = Colors.white;
                    }
                  });
                },
                backgroundColor: black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blueAccent, width: 3)),

              )
            ],
          ),
        ),
      ),
    ));
  }
}
