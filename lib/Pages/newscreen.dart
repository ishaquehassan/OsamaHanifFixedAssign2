import 'package:assignment2/Pages/nextscreen.dart';
import 'package:assignment2/widgets/posts.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class NewScreen extends StatelessWidget{
  String text;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(),
              ]),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  status(),
                  status(),
                  status(),
                  status(),
                  status(),
                ],
              ),
            ),
            Expanded(
              child:text==null?SizedBox():Posts(text: this.text)

              ),
          ]
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Align(
                alignment: Alignment.bottomRight,
                child:FloatingActionButton(
                  backgroundColor: Colors.blueAccent,
                  onPressed: (){
                    navigate(context, Texting(onText));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
            ),
          )
        ],
      ),
    );


  }

  Widget status() {
    return Container(
      width: 110,
      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(),
        ],
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "images/babar.jpg",
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 20,
            child: Text(
              "Osama Hanif",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
  onText(String text){
    this.text = text;
  }
}