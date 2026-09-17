import "dart:convert";
import 'package:dio/dio.dart';
import "package:http/http.dart" as http;
import "package:lj/tree_Plant/tree_model.dart";
import "../login/login_model.dart";

class ApiServices{
  final Dio dio = Dio();


  Future<login> Login(String email,String password) async{
    try{
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
          body:{
            "Email":email,
            "password":password,
          }
      );
      if(respo.statusCode == 200){
        final jsonData = jsonDecode(respo.body);
        final user_value = login.fromJson(jsonData);
        return user_value;
      }
      else{
        throw Exception("Error!!!!");
      }
    }
    catch(e)
    {
      print("Error$e");
      throw Exception("Error!!!!");
    }
  }
  Future<tree> Tree(){}
}