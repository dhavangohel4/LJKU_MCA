import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        actions: [
        Icon(Icons.notifications_none),
        SizedBox(width: 15),
        Icon(Icons.logout),
        SizedBox(width: 15),
      ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius:32,
                    backgroundColor: Colors.lightBlueAccent,
                    child: Icon(
                      Icons.admin_panel_settings_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text(
                        "Super Admin",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "Super Admin",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
