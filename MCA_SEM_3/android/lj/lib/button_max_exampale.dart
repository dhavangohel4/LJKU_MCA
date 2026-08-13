import 'package:flutter/material.dart';
import 'package:lj/stack_exampal.dart';
import 'package:lj/whatsappUI.dart';

import 'Task1.dart';
import 'Task2.dart';

class ButtonMaxExampale extends StatefulWidget {
  const ButtonMaxExampale({super.key});

  @override
  State<ButtonMaxExampale> createState() => _ButtonMaxExampaleState();
}

class _ButtonMaxExampaleState extends State<ButtonMaxExampale> {
  int currentI = 0;

  void indexchange(int index){
    setState(() {
      currentI = index;
    });
  }

  List screens = [
    Task1(),
    StackExampal(),
    whatsappUI(),
    Task2()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: ,
        // currentIndex: currentI,
        // onTap: indexchange,
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        currentIndex: currentI,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: indexchange,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: "Task"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile File"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Login",
          ),
        ],
      ),
    );
  }
}
