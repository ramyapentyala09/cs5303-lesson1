import 'package:flutter/material.dart';

import 'buttondemo_screen.dart';
import 'image_screen.dart';
import 'materialdesign_screen.dart';

class StartScreen extends StatelessWidget {

  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
        actions: [
          IconButton(
            onPressed: (){
            print('========== alarm button');
          },
           icon: Icon(Icons.alarm)
           ),
          IconButton(
            onPressed: () {
            print('========== message button');
          }, 
          icon: Icon(Icons.message)
          ),
          PopupMenuButton(
            onSelected: (String value){
              print('######### $value');
              },
            itemBuilder: (BuildContext context) {
            return <PopupMenuItem<String>>[
              PopupMenuItem(
                value: 'License',
                child: Row(
                  children: [
                    Icon(Icons.label),
                    Text('License'),
                  ],
                ),
                ),
                PopupMenuItem(
                 value: 'Balance',
                 child: Row(
                   children: [
                     Icon(Icons.account_balance),
                     Text('Balance'),
                   ],
                 ),
                 ),
                PopupMenuItem(
                  value: 'Profile',
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Text('Profile'),
                    ],
                  ),
                  ),
            ];
          } ), 
          ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(Icons.account_circle_rounded, size: 80.0,),
            accountName: Text('Ramya Pentyala'), 
            accountEmail: Text('rpentyala@uco.edu'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
              onTap: (){
                print('++++++++++ drawer: Friends');
                },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: (){
                print('++++++++++ drawer: Logout');
                },
       ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            'Choose a menu to navigate', style: Theme.of(context).textTheme.headline5,
            ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, MaterialDesignScreen.routeName);
          },
           child: Text(
             'Material Design Style Demo', 
             style: Theme.of(context).textTheme.button,
           )),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, ImageScreen.routeName),
          
          child: Text(
            'Image Demo',
             style: Theme.of(context).textTheme.button,
          ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, ButtonDemoScreen.routeName),
          
          child: Text(
            'Button Demo',
             style: Theme.of(context).textTheme.button,
          ),
          ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('+++++++++ floating action button');
          },
      child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (int index){print('+++++++ bottom tab index: $index');
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Time',
              icon: Icon(Icons.time_to_leave),
            ),
             BottomNavigationBarItem(
              label: 'Business',
              icon: Icon(Icons.business),
            ),
            ],
      ),
    );
  }
  
}