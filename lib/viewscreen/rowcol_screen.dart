import 'package:flutter/material.dart';

class RowColDemoScreen extends StatelessWidget {

  static const routeName = '/rowColDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row/Col Layout'),
),
body: Column(
  children: [
    Stack(
      children: [
        Container(
          height: 200.0,
          width: 300.0,
          color: Colors.teal,
        ),
        Icon(
          Icons.alarm,
          size: 100.0,
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Text(
            'Stack',
            style: Theme.of(context).textTheme.headline3,
            ),
        ),

      ],
      ),
    Row(
      children: [
    for (int i=0; i < 10; i++)
    Expanded(
      child: Container(
        color: Colors.red[800],
        margin: EdgeInsets.only(right: 5.0),
        child: Text('Col$i', 
        style: Theme.of(context).textTheme.headline4,
        ),
      ),
    ),
      ],
    ),
    Wrap(
      spacing: 10.0,
      runSpacing: 15.0,
      children: [
        for (int i=0; i < 10; i++)
        Container(
          color: Colors.blue[900],
          // margin: EdgeInsets.all(6.0),
          child: Text(
            'Col$i',
            style: Theme.of(context).textTheme.headline4,
          ),
        )
      ],
      ),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green[800],
              child: Text(
                'AA', 
                style: Theme.of(context).textTheme.headline3,
                ),
                ),
          ),
              
        
          Expanded(
            flex: 2,
            child: Container( 
              color: Colors.red[800],
              child: Text(
                'BB', 
                style: Theme.of(context).textTheme.headline3,
                ),
                ),
          ),
          Expanded(
            flex: 1,
            child: Container( 
              color: Colors.yellow[900],
              child: Text(
                'CC', 
                style: Theme.of(context).textTheme.headline3,
                ),
                ),
          ),
        ],
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.yellow[900],
          child: Text(
            'Hello',
            style: Theme.of(context).textTheme.headline5,
            
            ),
        ),
      ), 
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.yellow[900],
          child: Text(
            'World',
            style: Theme.of(context).textTheme.headline5,
            
            ),
        ),
      ), 
  ],
),
    );
  }
}