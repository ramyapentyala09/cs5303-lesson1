import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  static const routeName = '/businessCardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ramya Sri Pentyala'),
      ),
      body: Text('business card'),
    );
  }

}