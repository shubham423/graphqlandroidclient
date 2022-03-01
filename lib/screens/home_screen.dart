import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          children: <Widget>[],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
        floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () { 
          
         },
        child: Icon(Icons.group_add),
      ), 
    );
  }
}
