import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/tree_Plant/tree_controller.dart';

class TreeScreen extends StatefulWidget {
  TreeScreen({super.key});

  @override
  State<TreeScreen> createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  final TreeController controller = Get.put(TreeController());

  @override
  void initState() {
    super.initState();
    controller.TreeCont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : controller.TreeData.isEmpty
            ? Text("404")
            : ListView.builder(
                itemCount: controller.TreeData.length,
                itemBuilder: (context, index) {
                  final data = controller.TreeData[index];
                  return ListTile(
                    title: Text(data.name.toString()),
                    subtitle: Text(data.description.toString()),
                    leading: Image.network(data.image.toString()),
                  );
                },
              ),
      ),
    );
  }
}
