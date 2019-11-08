import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pierwsze zajęcia!"),
        ),
        body: ListView(
            children: <Widget>[
              Card(color: Colors.grey,
                child: Column(children: <Widget>[
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Opportunity"),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.star),
                          label: Text("star II")),
                    ],
                  ),
                  Image.asset("assets/opportunity.jpg"),
                ]),
              ),
              Card(color: Colors.grey,
                child: Column(children: <Widget>[
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Opportunity"),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.star),
                          label: Text("star II")),
                    ],
                  ),
                  Image.asset("assets/opportunity.jpg"),
                ]),
              )
            ],
          ),
      ),
    );
  }
}