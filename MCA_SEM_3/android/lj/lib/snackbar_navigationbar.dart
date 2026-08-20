import 'package:flutter/material.dart';

import 'Task3.dart';

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
          }, child: Text("data")),

          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Logout"),
                        backgroundColor: Colors.white10,
                        elevation: 6,
                        shadowColor: Colors.black,
                        content: Text("Do you really want to logout!..."),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> Task3()
                            ));
                          },
                              child: Text("Yes")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          },
                              child: Text("No")),
                        ],
                      ) ;
                    });
              }, child: Text("Alert Dialog")),

        ],
      ),
    );
  }
}

