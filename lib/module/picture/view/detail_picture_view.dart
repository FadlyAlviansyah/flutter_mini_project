import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class DetailPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailPictureController>();
    final pictureId = Get.arguments;

    controller.fetchPictureDetail(pictureId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Detail'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final picture = controller.picture;
        if (picture.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        return Column(
          children: [
            Image.network(
              picture['download_url'] ?? '',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), 
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Taken by: ${picture['author'] ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
