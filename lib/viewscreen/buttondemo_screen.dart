import 'package:flutter/material.dart';

enum _Language{
  Dart, Java, Javascript, Cpp, Python, Csharp,
}

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
      body: SingleChildScrollView(
        child: Column(
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
                  IconButton(
                    onPressed: () => print('===== Icon Button'),
                    icon: Icon(Icons.dangerous, size: 50.0, color: Colors.pinkAccent,),
                    ),
                    Container(
                      color: Colors.red[900],
                      padding: EdgeInsets.all(8.0),
                      child: DropdownButton<int> (
                        value: 1,
                        onChanged: (int? value){
                          print('===== drop down menu: $value');
                        },
                        items: [
                          DropdownMenuItem(
                            value: 0,
                            child: Text('Menu 0'),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text('Menu 1'),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text('Menu 2'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.teal,
                      child: PopupMenuButton<_Language>(
                        initialValue: _Language.Dart,
                        onSelected: (_Language value) {
                          print('====== selected is $value');
                        },
                        itemBuilder: (context) => [
                          for (var lang in _Language.values)
                          PopupMenuItem(
                            value: lang,
                            child: Text('${lang.toString().split('.')[1]}'),
                            ),
                          
                        ],
                        ),
                    ),
          ],
          ),
      ),
    );

  }

}
