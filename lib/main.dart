

import 'package:flutter/material.dart';
import 'utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: SingleChildScrollView(  
        child: Container(
          
          width: MediaQuery.of(context).size.width,
          color: mainBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: <Widget>[
              Stack(
                
                alignment: Alignment.topCenter,
          overflow: Overflow.visible,
                children: <Widget>[
                  _backCover(),
                  _greetings(),
                  _bottomHolder(),
                ],

              ),
            ],
          ),
        ),   
        
      ),
       
    );
  }

  Container _backCover() {
    return Container(
                  padding: EdgeInsets.all(20.0),
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)
                      ),    
                     gradient: LinearGradient(
                       colors: <Color>[
                       mainC,midC,lightC,
                     ],
                     stops: [0.0,0.5,0.9],
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     ),
                  ),
                  
                   
                  
                

                );
  }

  Positioned _greetings(){
return Positioned(
  left: 20,
  bottom: 80,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Hi Dan',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          
        ),
      ),
      SizedBox(height: 6.0,),
      Text(
        'How are you feeling today ?',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white70,
          fontWeight: FontWeight.w300,
        ),
      )
    ],
  ),
  );

  }

  Positioned _bottomHolder(){
    return Positioned(
      left: 10,
      right: 10,
      top: 200,

      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [BoxShadow(
            color: Colors.black87,
            spreadRadius: 5,
          )]
        ),
      ),
    );
  }
}
