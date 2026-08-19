import 'package:flutter/material.dart';

class snackbar_navigationbar extends StatelessWidget {
  const snackbar_navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
                MaterialPageRoute(
                    builder: (context) => snackbar_navigationbar()));
          }, child: Text("data"))
          ],
      ),
    );
  }
}

