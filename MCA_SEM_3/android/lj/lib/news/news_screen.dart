import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:lj/news/news_controller.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  final NewsController controller = Get.put(NewsController());

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: obx(() => controller),
    );
  }
}
