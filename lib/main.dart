import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          foregroundColor: Colors.amber,
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ninjaLevel +=1 ;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/download.jpeg'),
                      radius: 40.0,
                    ),
                ),
                 Divider(
                   height: 60.0,
                   color: Colors.grey[800],
                 ),
                 Text('NAME',
                      style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                  SizedBox(height: 10.0), // space between these two widgets
                  Text('Vicario',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('CURRENT NINJA LEVEL',
                      style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                  SizedBox(height: 10.0), // space between these two widgets
                  Text('$ninjaLevel',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 30.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.email, color: Colors.grey[200]),
                      SizedBox(width: 10.0),
                      Text('karanu@gmail.com',
                          style: TextStyle(
                            color: Colors.grey[400],
                            letterSpacing: 1.0,
                          ))
                    ],
                  )
                ])));
  }
}



