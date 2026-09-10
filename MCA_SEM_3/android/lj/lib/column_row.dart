import 'package:flutter/material.dart';

class columnRow extends StatelessWidget {
  const columnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // block 1
          Row(
            children: [
              // part 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              
              // part 2
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              
              // part 3
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              
              // part 4
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          // block 2
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // block 3
          Row(
            children: [
              // part 1
              Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 100,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 100,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // part 2
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 25,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 25,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              // part 3
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              // part 4
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 25,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 25,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
