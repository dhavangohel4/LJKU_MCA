import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            // Beach Image
            Image.asset(
              "assets/images/beach.jpg",
              height: 250,
              width: 300,
              fit: BoxFit.cover,
            ),

            // White Login Box
            Positioned(
              bottom: -60,
              left: 25,
              child: Container(
                width: 250,
                color: Colors.white,
                padding: const EdgeInsets.all(10),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // Username
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Password
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Arrow Button
            Positioned(
              bottom: -95,
              left: 125,
              child: ElevatedButton(
                onPressed: () {
                  print("Login Button Clicked");
                },
                child: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}