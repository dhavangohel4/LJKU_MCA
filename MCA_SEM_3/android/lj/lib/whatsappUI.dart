import 'package:flutter/material.dart';

class whatsappUI extends StatelessWidget {
  whatsappUI({super.key});
  List color = [Colors.red,Colors.blue,Colors.green,Colors.greenAccent,Colors.cyan];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "WHATSAPP",
          style:TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
        ),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
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

          }),
    );
  }
}
