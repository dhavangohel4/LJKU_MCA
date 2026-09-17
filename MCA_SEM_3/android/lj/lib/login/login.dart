
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logincontroller.dart';
import 'logincontroller.dart';

class LoginScreen extends StatelessWidget {
LoginScreen({super.key});

logincontroller controller = Get.put(logincontroller());

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Login"),
centerTitle: true,
),
body: Padding(
padding: const EdgeInsets.all(20),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
"Login",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 30),

TextField(
controller: controller.email,
decoration: const InputDecoration(
labelText: "Email",
hintText: "Enter Email",
border: OutlineInputBorder(),
prefixIcon: Icon(Icons.email),
),
),

const SizedBox(height: 20),

TextField(
controller: controller.password,
obscureText: true,
decoration: const InputDecoration(
labelText: "Password",
hintText: "Enter Password",
border: OutlineInputBorder(),
prefixIcon: Icon(Icons.lock),
),
),

const SizedBox(height: 30),

SizedBox(
width: double.infinity,
height: 50,
child: ElevatedButton(
onPressed: () {
controller.LoginCont();
},
child: const Text(
"Login",
style: TextStyle(fontSize: 18),
),
),
),
],
),
),
);
}
}

