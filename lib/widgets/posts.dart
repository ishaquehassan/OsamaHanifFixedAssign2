import 'package:flutter/material.dart';

class Posts extends StatefulWidget{
  String text;

  Posts({this.text});
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
List <String> posts;

@override
  void initState() {
  posts = [];
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
setState(() {
  posts.add(widget.text.toString());
});
    return Container( margin: EdgeInsets.all(3.0),
      child: ListView.builder(itemCount: posts.length,padding: EdgeInsets.all(3.0),itemBuilder:(ctx,index){
        return PostsScreen(posts[index]);
      } ,),

    );

  }
  PostsScreen(String text){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,bottom: 5),
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
