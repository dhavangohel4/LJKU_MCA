import 'package:flutter/material.dart';

class Task31 extends StatefulWidget {
  const Task31({super.key});

  @override
  State<Task31> createState() => _task1State();
}

class _task1State extends State<Task31> {
  // Index to keep track of the selected bottom navigation item
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff185d39),
        title: const Text(
          "My Appointment",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Card(
              color: const Color(0xff185d39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID",
                            style: TextStyle(color: Color(0xffd3a511))),
                        Text("9313788280",
                            style: TextStyle(color: Color(0xffffffff))),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Date",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("Saturday , March 7 , 2023",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Time",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("11:00 AM",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Type of Service",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("Full Body Massage\nBack Massage\nHead Massage",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Amount",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("\$100.00",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: const Color(0xff185d39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID",
                            style: TextStyle(color: Color(0xffd3a511))),
                        Text("9313788280",
                            style: TextStyle(color: Color(0xffffffff))),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Date",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("Saturday , March 7 , 2023",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Time",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("11:00 AM",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Type of Service",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("Full Body Massage\nBack Massage\nHead Massage",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Amount",
                                style: TextStyle(color: Color(0xffd3a511))),
                            Text("Rs. 100.00",
                                style: TextStyle(color: Color(0xffffffff))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffd3a511), // Changed to match text color
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}