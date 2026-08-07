import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/beach.jpg",
                  height: 500,
                  width: 500,
                ),

                Positioned(
                  bottom: -100,
                  right: 60,
                  child: Container(
                    height: 100,
                    width: 400,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    bottom: -100,
                    right: 60,
                    child: Container(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Username",
                                border: OutlineInputBorder()
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}