import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/image_controller.dart';
import 'full_screen.dart';

class ImageGallery extends StatelessWidget {
  final imagecon=Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
      ),
      body: GetBuilder<ImageController>(
        init: ImageController(),
        builder: (controller) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: controller.calculateColumnCount(context),
            ),
            itemCount: controller.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      FullScreenImage(imageUrl: controller.images[index].largeImageURL,heroTag: 'image$index'),
                    );
                  },
                  child: Hero(
                    tag: 'image$index',
                    child: Column(
                      children: [
                        Image.network(
                          controller.images[index].previewURL,
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Likes: ${controller.images[index].likes}'),
                            Text('Views: ${controller.images[index].views}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
