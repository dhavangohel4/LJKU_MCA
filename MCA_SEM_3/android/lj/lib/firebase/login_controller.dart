import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginController extends GetxController{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final isLoading = false.obs;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> LoginCount()async{
    try{
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
          email: email.text,
          password: password.text
      );

      Get.snackbar("Success", "Login Successfully....!");
    }on FirebaseAuthException catch(e){
      String message;

      if(e.code == "invalid-email"){
        message = "Email is wrong";
      }else if(e.code == "Wrong-password"){
        message = "Password is wrong";
      }else{
        message = "Login failed";
      }
      Get.snackbar("Error", message);
    }
    catch(e) {
      Get.snackbar("Error", "Login Failed....!");
    }finally{
      isLoading.value = false;
    }
  }
}