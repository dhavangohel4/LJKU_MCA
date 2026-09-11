import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/api_services/api_services.dart';

import '../button_max_exampale.dart';

class logincontroller extends GetxController{
  ApiServices api = ApiServices();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> LoginCont()async{
    try{
      final respo = await api.Login(email.text, password.text);
      if(respo.responseCode.toString() == '1'){
        Get.snackbar(
          "Success","",
          backgroundColor: Colors.green
        );
        Get.to(ButtonMaxExampale());
      }
      else{
        Get.snackbar(
            "Error","",
          backgroundColor: Colors.red
        );
      }
    }
    catch(e){
      print(e);
    }
  }
}