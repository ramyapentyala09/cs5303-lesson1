import 'package:flutter/material.dart';

class FontDemoScreen extends StatelessWidget {
  static const routeName = '/fontdemoScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Demo'),
      ),
      body: Column(
        children: [
          Text(
            'Font Demo Regular', 
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'LobsterTwo', 

          ),
          ),
          Text('Font Demo Italic',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'LobsterTwo',
            fontStyle: FontStyle.italic,
          ),
          ),
          Text('Font Demo Bold',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'LobsterTwo',
            fontWeight: FontWeight.bold,

          ),
          
          ),

        ],
      ),
      );
  }

}