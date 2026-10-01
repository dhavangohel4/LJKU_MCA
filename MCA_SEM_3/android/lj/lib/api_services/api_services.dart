import "dart:convert";
import 'package:dio/dio.dart';
import "package:http/http.dart" as http;
// import "package:lj/news/news_model.dart";
import "package:lj/tree_Plant/tree_model.dart";
import "../login/login_model.dart";
import "../news/news_model.dart";

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

  Future<tree> Tree()async{
    try{
      final respo =await dio.get("https://www.anniecabs.com/LJ/index.php/api/get_tree_plant");
          if(respo.statusCode == 200){

            final user_value = tree.fromJson(respo.data);
            return user_value;
          }
          else{
            throw Exception("Error!!!!!!");
    }
    }
    catch(e){
      print(e.toString());
      throw Exception("Error!!!!!!");
    }
  }

  // Future<news> news()async{
  //
  // }
}