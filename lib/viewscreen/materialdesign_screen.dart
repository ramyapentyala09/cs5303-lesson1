import 'package:flutter/material.dart';

class MaterialDesignScreen extends StatelessWidget {
  static const routeName='/materialDesignScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design Screen'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Material Design', 
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
                fontFamily: 'Courier New',
                ),
                ),
                Text('Two', style: TextStyle(
                  fontSize: 30.0,
                ),
                ),
                Text(
                  'headline1', 
                style: Theme.of(context).textTheme.headline1,
                ),
                 Text(
                  'headline2', 
                style: Theme.of(context).textTheme.headline2,
                ),
                 Text(
                  'headline3', 
                style: Theme.of(context).textTheme.headline3,
                ),
                 Text(
                  'headline4', 
                style: Theme.of(context).textTheme.headline4,
                ),
                 Text(
                  'headline5', 
                style: Theme.of(context).textTheme.headline5,
                ),
                 Text(
                  'headline6', 
                style: Theme.of(context).textTheme.headline6,
                ),
                 Text(
                  'subtitle1', 
                style: Theme.of(context).textTheme.subtitle1,
                ),
                 Text(
                  'subtitle2', 
                style: Theme.of(context).textTheme.subtitle2,
                ),
                 Text(
                'bodyText1', 
              style: Theme.of(context).textTheme.bodyText1,
              ),
               Text(
                'bodyText2', 
              style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'button',
                style: Theme.of(context).textTheme.button,
              ),
               Text(
                'caption', 
              style: Theme.of(context).textTheme.caption,
              ),
               Text(
                'overline', 
              style: Theme.of(context).textTheme.overline,
              ),
              
        
            ],
          ),
        ),
         );
  
  }
}