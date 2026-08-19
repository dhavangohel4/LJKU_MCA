import 'package:flutter/material.dart';


class StackExampal extends StatelessWidget {
  const StackExampal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsK8Ua-1YBim8EmQe7Y03hKoPApy95aW4EgeW2w2rd2Q&s=10",
                    width:200,
                ),
                Positioned(
                  bottom: -120,
                  right: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pink,
                  ),
                ),
                Positioned(
                  bottom: -120,
                  right: 30,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
