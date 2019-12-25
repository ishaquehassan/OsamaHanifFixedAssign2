import 'package:assignment2/widgets/customappbar.dart';
import 'package:flutter/material.dart';

typedef OnText(String Text);

class Texting extends StatelessWidget {
  TextEditingController controller;
  OnText onText;

  Texting(this.onText);

  @override
  Widget build(BuildContext context) {
    if (controller == null) {
      controller = TextEditingController();
    }
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          SizedBox(
            child: TextField(
              controller: controller,
              decoration: InputDecoration.collapsed(
                  hintText: "Write To Say Something",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                onText(controller.text);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Write Post",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(child: Text("")),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
