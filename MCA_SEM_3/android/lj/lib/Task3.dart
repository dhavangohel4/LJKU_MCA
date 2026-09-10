// import 'package:flutter/material.dart';
//
// class Task3 extends StatefulWidget {
//   const Task3({super.key});
//
//   @override
//   State<Task3> createState() => _Task3State();
// }
//
// class _Task3State extends State<Task3> {
//   int currentIndex = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       // App Bar
//       appBar: AppBar(
//         backgroundColor: const Color(0xff146B40),
//         elevation: 0,
//         leading: const Icon(
//           Icons.arrow_back,
//           color: Colors.white,
//         ),
//         centerTitle: true,
//         title: const Text(
//           "My Appointments",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//
//       // Body
//       body: ListView(
//         padding: const EdgeInsets.all(12),
//         children: const [
//
//           // First Card
//           AppointmentCard(
//             orderId: "1234565452",
//             date: "Saturday, March 7, 2023",
//             time: "11:00 AM",
//             amount: "\$100.00",
//           ),
//
//           SizedBox(height: 8),
//
//           // Second Card
//           AppointmentCard(
//             orderId: "1234565452",
//             date: "Saturday, March 7, 2023",
//             time: "11:00 AM",
//             amount: "\$100.00",
//           ),
//         ],
//       ),
//
//       // Bottom Navigation
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         iconSize: 24,
//         currentIndex: currentIndex,
//
//         selectedItemColor: const Color(0xffE5A52B),
//         unselectedItemColor: Colors.grey,
//
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//
//           BottomNavigationBarItem(
//             icon: Icon(Icons.confirmation_num_outlined),
//             label: "Booking",
//           ),
//
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer_outlined),
//             label: "Offer",
//           ),
//
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// /// Appointment Card
// class AppointmentCard extends StatelessWidget {
//   final String orderId;
//   final String date;
//   final String time;
//   final String amount;
//
//   const AppointmentCard({
//     super.key,
//     required this.orderId,
//     required this.date,
//     required this.time,
//     required this.amount,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xff146B40),
//         borderRadius: BorderRadius.circular(7),
//       ),
//
//       child: Column(
//         children: [
//
//           // Order ID
//           Padding(
//             padding: const EdgeInsets.all(17),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Order ID",
//                   style: TextStyle(
//                     color: Color(0xffD69B2C),
//                     fontSize: 10,
//                   ),
//                 ),
//
//                 const SizedBox(height: 5),
//
//                 Text(
//                   orderId,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 11,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           const Divider(
//             height: 1,
//             color: Color(0xff438460),
//           ),
//
//           // Date and Time
//           Padding(
//             padding: const EdgeInsets.all(17),
//             child: Row(
//               children: [
//
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Appointment Date",
//                         style: TextStyle(
//                           color: Color(0xffD69B2C),
//                           fontSize: 10,
//                         ),
//                       ),
//
//                       const SizedBox(height: 5),
//
//                       Text(
//                         date,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Appointment Time",
//                         style: TextStyle(
//                           color: Color(0xffD69B2C),
//                           fontSize: 10,
//                         ),
//                       ),
//
//                       const SizedBox(height: 5),
//
//                       Text(
//                         time,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           const Divider(
//             height: 1,
//             color: Color(0xff438460),
//           ),
//
//           // Service and Amount
//           Padding(
//             padding: const EdgeInsets.fromLTRB(
//               17,
//               12,
//               17,
//               17,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                         "Type of Service",
//                         style: TextStyle(
//                           color: Color(0xffD69B2C),
//                           fontSize: 10,
//                         ),
//                       ),
//
//                       SizedBox(height: 5),
//
//                       Text(
//                         "Full Body Massage",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//
//                       Text(
//                         "Back Massage",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//
//                       Text(
//                         "Head Massage",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Total Amount",
//                         style: TextStyle(
//                           color: Color(0xffD69B2C),
//                           fontSize: 10,
//                         ),
//                       ),
//
//                       const SizedBox(height: 5),
//
//                       Text(
//                         amount,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          "My Appointments",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),

      // Abhi body simple rakhi hai
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              width: 350,
              height: 400,
              child: Card(
                color: Colors.green,
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        currentIndex: currentIndex,

        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Booking",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: "Offer",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}