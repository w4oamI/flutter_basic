import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Hellopage('Hello world')
    );
  }
}

class Hellopage extends StatefulWidget {
  final String title;


  Hellopage(this.title);

  @override
  _HellopageState createState() => _HellopageState();
}

class _HellopageState extends State<Hellopage> {
  String message = 'world hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(
            child: Icon(Icons.add),
              onPressed: _changeMessage),
        appBar: AppBar(
          title: Text('예제입니다.'),
        ),body: Text(message,style: TextStyle(fontSize:  30)));
  }

  void _changeMessage() {
    setState(() {
      message = 'hello';
    });
  }
}
