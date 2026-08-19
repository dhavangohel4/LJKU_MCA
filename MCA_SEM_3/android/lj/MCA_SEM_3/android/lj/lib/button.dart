import 'package:flutter/material.dart';

import 'GriedExample.dart';
import 'Task1.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Navigation"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Task1())
                );
              },
              child: Text("Next Screen"))
        ],
      ),
    );
  }
}
