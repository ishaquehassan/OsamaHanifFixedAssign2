import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String text;

  Posts(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(),
        ],
        color: Colors.white,
      ),
      child: Text(text),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    );
  }
}
