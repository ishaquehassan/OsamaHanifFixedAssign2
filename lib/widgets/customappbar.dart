import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Icon(
             Icons.arrow_back,
             size: 30,

           ),
         ),
         Expanded(child: SizedBox()),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Text(
             "Hello Osama,",
             style: TextStyle(
               fontSize: 20,
             ),
           ),
         )
       ],
     ),
color: Colors.white,
    );
  }
  Size get preferredSize => Size.fromHeight(50);
}
