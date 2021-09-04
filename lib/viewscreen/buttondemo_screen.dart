import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget{
  static const routeName = '/buttonDemoScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('+++++++++++ Floating Action Button'),
        child: Icon(Icons.add), 
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () { print('Elevated Button 1'); 
            }, 
          child: Text('Elevated Button 1'),
          ),
          ElevatedButton.icon(
            onPressed: () => print('Elevated Button 2'), 
            icon: Icon(Icons.add_link), 
            label: Text('Elevated Button 2'),
            ),
            OutlinedButton(
              onPressed: () => print('========== Outlined Button 1'), 
            child: Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: () => print('========= Outlined Button 2'), 
              icon: Icon(Icons.backpack), 
              label: Text('Outlined Button 2'),
              ),
              TextButton(
                onPressed: () => print('==== Text Button 1'),
                child: Text('Text Button 1'),
              ),
              TextButton.icon(
                onPressed: () => print('===== Text Button 2'), 
                icon: Icon(Icons.bubble_chart), 
                label: Text('Text Button 2'),
                ),
        ],
        ),
    );

  }

}
