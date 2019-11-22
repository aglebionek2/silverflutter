import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String title;
  Image image;
  Function onStarit;
  bool isStarred;
  MyCard({Key key, this.title, this.image, this.onStarit, this.isStarred})
      : super(key: key);
  MyCard.titleOnly({Key key, this.title, this.onStarit, this.isStarred})
      : super(key: key) {
    image = Image.asset("assets/opportunity.jpg");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(this.title),
                  FlatButton.icon(
                    color: Colors.grey,
                    onPressed: this.onStarit,
                    icon: Icon(
                      isStarred ? Icons.star : Icons.star_border,
                      color: Colors.yellow,
                    ),
                    label: Text("Star it"),
                  ),
                ],
              ),
              // Image.asset("assets/opportunity.jpg"),
              this.image,
            ],
          ),
        ),
      ),
    );
  }
}
