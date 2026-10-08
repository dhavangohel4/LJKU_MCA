import "dart:convert";

import 'package:dio/dio.dart';
import "package:http/http.dart" as http;

// import "package:lj/news/news_model.dart";
import "package:lj/tree_Plant/tree_model.dart";

import "../login/login_model.dart";
import "../news/news_model.dart";

class ApiServices {
  final Dio dio = Dio();

  Future<login> Login(String email, String password) async {
    try {
      final respo = await http.post(
        Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {"Email": email, "password": password},
      );
      if (respo.statusCode == 200) {
        final jsonData = jsonDecode(respo.body);
        final user_value = login.fromJson(jsonData);
        return user_value;
      } else {
        throw Exception("Error!!!!");
      }
    } catch (e) {
      print("Error$e");
      throw Exception("Error!!!!");
    }
  }

  Future<tree> Tree() async {
    try {
      final respo = await dio.get(
        "https://www.anniecabs.com/LJ/index.php/api/get_tree_plant",
      );
      if (respo.statusCode == 200) {
        final user_value = tree.fromJson(respo.data);
        return user_value;
      } else {
        throw Exception("Error!!!!!!");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Error!!!!!!");
    }
  }

  // Future<news> News() async {
  //   try {
  //     final respo = await dio.get(
  //       "https://gnews.io/api/v4/search?q=example&lang=en&country=us&max=10&apikey=YOUR_API_KEY",
  //     );
  //
  //     if (respo.statusCode == 200) {
  //       final userValue = news.fromJson(respo.data);
  //
  //       return userValue;
  //     } else {
  //       throw Exception("News API Error!!!!!!");
  //     }
  //   } catch (e) {
  //     print("News Error: $e");
  //     throw Exception("News API Error!!!!!!");
  //   }
  // }

  Future<news> News() async {
    try {
      final respo = await dio.get(
        "https://gnews.io/api/v4/search?q=example&lang=en&country=us&max=10&apikey=b9c7382436b811f3b66d2091f54e9f5a",
      );

      // API status code
      print("Status Code: ${respo.statusCode}");

      // API ka complete response
      print("API Response: ${respo.data}");

      if (respo.statusCode == 200) {
        final userValue = news.fromJson(respo.data);

        // Parsed model data
        print("Total Articles: ${userValue.totalArticles}");
        print("Articles Count: ${userValue.articles?.length}");

        return userValue;
      } else {
        throw Exception("News API Error!!!!!!");
      }
    } catch (e) {
      print("News Error: $e");
      rethrow;
    }
  }
}
