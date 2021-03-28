import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 21.0),
          child: RichText(
              text: TextSpan(
              children: [
                TextSpan(text: 'С', style: TextStyle(color: Color(0xFF4CAF50),),),
                TextSpan(text: 'писок'),
                TextSpan(text: '\n\nи', style: TextStyle(color: Colors.yellow,),),
                TextSpan(text: 'нтересных мест', )
              ],
              style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
              ),
          ),
            textAlign: TextAlign.left,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 157.0,
      ),
    );
  }
}
