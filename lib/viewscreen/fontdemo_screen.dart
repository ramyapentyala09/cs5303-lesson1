import 'package:flutter/material.dart';

class FontDemoScreen extends StatelessWidget {
  static const routeName = '/fontdemoScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Demo'),
      ),
      body: Text('font demo'),
      );
  }

}