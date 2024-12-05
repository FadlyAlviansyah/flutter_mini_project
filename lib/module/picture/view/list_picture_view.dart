import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  final controller = Get.find<ListPictureController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Photo')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return LoadingWidget();
        }

        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.DETAIL, arguments: picture['id']);
              },
              child: ListContentWidget(
                imageUrl: picture['download_url'],
                author: picture['author'],
              ),
            );
          },
        );
      }),
    );
  }
}