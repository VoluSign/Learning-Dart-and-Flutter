// ignore_for_file: unnecessary_new, prefer_const_constructors

import "package:flutter/material.dart";

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  var num1 = 0.0, num2 = 0.0, sum = 0.0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void add(){
    setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
    
  }
  void sub(){
    setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void mul(){
    setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void div(){
    setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),

      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output: $sum",
                style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.purple),
                ),
              new TextField(
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: "Enter Number 1",
                  
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: "Enter Number 2"
                ),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0)
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.blueAccent,
                    onPressed: add,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blueAccent,
                    onPressed: sub,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0)
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.blueAccent,
                    onPressed: mul,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.blueAccent,
                    onPressed: div,
                  ),
            ],
            )
        ],
        ),
      )
    )
    );
  }  
}