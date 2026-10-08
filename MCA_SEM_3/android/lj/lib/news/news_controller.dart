import 'package:get/get.dart';
import 'package:lj/api_services/api_services.dart';
import 'package:lj/news/news_model.dart';

class NewsController extends GetxController {
  RxBool isLoading = false.obs;

  RxList<Articles> newsData = <Articles>[].obs;

  Future<void> newsCont() async {
    try {
      isLoading.value = true;

      final respo = await ApiServices().News();

      print("Total Articles: ${respo.totalArticles}");
      print("Articles: ${respo.articles}");
      print("Articles Count: ${respo.articles?.length}");

      newsData.value = respo.articles ?? [];

      print("NewsData Count: ${newsData.length}");
    } catch (e) {
      print("News Error: $e");

      Get.snackbar(
        "Error",
        "Unable to load news",
      );
    } finally {
      isLoading.value = false;
    }
  }
}