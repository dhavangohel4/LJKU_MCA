import 'package:http/http.dart' as http;

class ApiServices{
  Future<login> Login(String email,String password) async{
    try{
      final respo = await http.post(
        Uri.porse(),
        body:{
          "Email":email,
          "password":password,
        }
      );

      if(respo.statusCode == 200){
        final jsonData = jsonDecode(respo.body);
        final user_value = login.finaljson(jsonData);
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
}