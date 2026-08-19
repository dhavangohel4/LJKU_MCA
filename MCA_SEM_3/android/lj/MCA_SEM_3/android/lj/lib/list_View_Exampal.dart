import 'package:flutter/material.dart';

class ListViewExampal extends StatelessWidget {
  ListViewExampal({super.key});

  List color = [Colors.red,Colors.blue,Colors.green,Colors.greenAccent,Colors.cyan];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: color.length,
          itemBuilder: (context,index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: color[index],
                      // ?Colors.blue,
                  child: Text("$index"),
                ),
              ),
            );
          }
      ),
    );



    // return Scaffold(

      // body: ListView(
      //   children: [
      //     Center(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //   ],
      // ),
    // );

  }
}
