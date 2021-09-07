import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  static const routeName = '/businessCardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ramya Sri Pentyala'),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(26.0, 50.0, 20.0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'images/ramya.jpeg',
                     height: 200.0,
                     )),
              ),
              Divider(
                color: Colors.yellow,
                height: 40.0,
              ),
              Text(
                'Name', 
                style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Ramya Sri Pentyala', 
                  style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                'Title', 
                style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Student', 
                  style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                'Department', 
                style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Computer Science', 
                  style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 20.0,),
                  Row(children: [
                  Icon(Icons.email),
                  SizedBox(width: 30.0,),
                  Text('rpentyala@uco.edu', style: Theme.of(context).textTheme.headline4,),
                  ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(children: [
                  Icon(Icons.phone),
                  SizedBox(width: 30.0,),
                  Text('+1 (405) 856-3842', style: Theme.of(context).textTheme.headline4,),
                  ],
                  ),
                  
                
            ],
            ),
        ),
      ),
      ),
    );
  }

}