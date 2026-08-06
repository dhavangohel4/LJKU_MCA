import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  Task1({super.key});

  List dataicon = [
    Icons.people,
    Icons.task,
    Icons.calendar_month,
    Icons.bar_chart,
  ];

  List dataText = [
    "Employee\nManagement",
    "Task\nManagement",
    "Attendance\nManagement",
    "Expense\nTracking",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Admin Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.logout, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          // Super Admin Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue.shade100,
                        child: const Icon(
                          Icons.admin_panel_settings,
                          size: 38,
                          color: Colors.blue,
                        ),
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Super Admin",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "admin@example.com",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.logout,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: dataicon.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        dataicon[index],
                        size: 40,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        dataText[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Task1 extends StatelessWidget {
//   Task1({super.key});
//   List dataicon = [Icons.people,Icons.task,Icons.calendar_month_outlined];
//   List dataText = ["Employee \n Management",
//     "Task \Management",
//     "Attendance \nmanagement"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//
//           ),
//           Expanded(
//             child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2
//                 ),
//                 itemCount: 3,
//                 itemBuilder: (context,index){
//                   return Card(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(dataicon[index],size: 36,),
//                         Text("${dataText[index]}"),
//                       ],
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text("Admin Dashboard"),
//     //     actions: [
//     //     Icon(Icons.notifications_none),
//     //     SizedBox(width: 15),
//     //     Icon(Icons.logout),
//     //     SizedBox(width: 15),
//     //   ],
//     //   ),
//     //   body: SingleChildScrollView(
//     //     child: Column(
//     //       children: [
//     //         SizedBox(height: 20),
//     //         Padding(
//     //           padding: const EdgeInsets.all(8.0),
//     //           child: Row(
//     //             children: [
//     //               CircleAvatar(
//     //                 radius:32,
//     //                 backgroundColor: Colors.lightBlueAccent,
//     //                 child: Icon(
//     //                   Icons.admin_panel_settings_outlined,
//     //                   size: 35,
//     //                   color: Colors.blue,
//     //                 ),
//     //               ),
//     //               SizedBox(width: 15),
//     //               Column(
//     //                 children: [
//     //                   Text(
//     //                     "Super Admin",
//     //                     style: TextStyle(
//     //                       fontSize: 18,
//     //                       fontWeight: FontWeight.bold
//     //                     ),
//     //                   ),
//     //                   Text(
//     //                     "Super Admin",
//     //                     style: TextStyle(
//     //                         fontSize: 18,
//     //                         fontWeight: FontWeight.bold
//     //                     ),
//     //                   ),
//     //                 ],
//     //               ),
//     //
//     //             ],
//     //           ),
//     //         ),
//     //       ],
//     //     ),
//     //
//     //   ),
//     // );
//   }
// }
