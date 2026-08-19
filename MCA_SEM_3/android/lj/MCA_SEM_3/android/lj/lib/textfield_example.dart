// import 'package:flutter/material.dart';
//
// class TextfieldExample extends StatelessWidget {
//   TextfieldExample({super.key});
//
//   // int a = 1;
//   // object Creation is varybale
//   TextEditingController nameController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             width: 300,
//             child: TextField(
//               keyboardType: TextInputType.number,
//               controller: nameController,
//               obscureText: true,
//               maxLength: 10,
//               maxLines: 4,
//               decoration: InputDecoration(
//                 label: Text("Enter The Name"),
//                 prefixIcon: Icon(Icons.lock),
//                 suffixIcon: Icon(Icons.remove_circle),
//                 // hintText: "Enter The Name",
//                 // border: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(20)
//                 // )
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.green
//                       )
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.red
//                   )
//                 ),
//
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  TextfieldExample({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.account_circle),
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                      gapPadding: 4.0,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        )
                    )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.mark_email_read),
                  border: OutlineInputBorder(
                    gapPadding: 4.0,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: TextField(
                controller: number,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  label: Text("Number"),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.call),
                  border: OutlineInputBorder(
                    gapPadding: 4.0,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                controller: password,
                decoration: InputDecoration(
                    label: Text("password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      gapPadding: 4.0,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        )
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}