import 'package:get/get.dart';
import 'package:lj/news/news_model.dart';

class NewsController extends GetxController {

  RxList<Articles> NewsData = <News>[].obs;
  RxBool isloding = false.obs;

  Future<void> NewsCont()async{

  }
}