import 'package:flutter/material.dart';

class Griedexample extends StatelessWidget {
  const Griedexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            childAspectRatio: 1.5,
            mainAxisExtent: 10,
            crossAxisSpacing: 20,
          ),
        itemCount: 5,
        itemBuilder: (context,index){
            
        }

      ),
      // body: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       childAspectRatio: 1.5,
      //       mainAxisExtent: 10,
      //       crossAxisSpacing: 20,
      //
      //     ),
      //     children:[
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         ),
      //       ),
      //
      //     ],
      // ),
    );
  }
}
