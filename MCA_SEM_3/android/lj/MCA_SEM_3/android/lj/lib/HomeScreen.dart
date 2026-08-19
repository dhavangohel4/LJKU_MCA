import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:Text("HOME Screen",
            style: TextStyle(color:Colors.red)),// Text Style, Text
        centerTitle:true,
      ),
    );
  }
}
