import 'package:flutter/material.dart';

class ListViewExampal extends StatelessWidget {
  const ListViewExampal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context,index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
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
