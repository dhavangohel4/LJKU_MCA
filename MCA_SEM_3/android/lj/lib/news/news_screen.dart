import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/news/news_controller.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  final NewsController controller = Get.put(NewsController());

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();

    widget.controller.newsCont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News")),
      body: Obx(() {
        if (widget.controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (widget.controller.newsData.isEmpty) {
          return const Center(child: Text("No News Found"));
        }

        return ListView.builder(
          itemCount: widget.controller.newsData.length,
          itemBuilder: (context, index) {
            final article = widget.controller.newsData[index];

            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: article.image != null
                    ? Image.network(
                        article.image!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported);
                        },
                      )
                    : const Icon(Icons.article),
                title: Text(article.title ?? "No Title"),
                subtitle: Text(
                  article.description ?? "No Description",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
