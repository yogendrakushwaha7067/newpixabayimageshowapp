import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

import '../Model/pixabay_model.dart';

class ImageController extends GetxController {
  List<PixabayImage> images = [];

  @override
  void onInit() {
    super.onInit();
    fetchImages();
  }

  Future<void> fetchImages() async {
    final String apiKey = '43421347-8c5d5257a4e0f195b98b3681b';
    final String url = 'https://pixabay.com/api/?key=$apiKey&per_page=50';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body)['hits'];
      images = responseData.map((json) => PixabayImage.fromJson(json)).toList();
      update();
    } else {
      throw Exception('Failed to load images');
    }
  }

  int calculateColumnCount(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth ~/ 150).clamp(1, 4); // Adjust 150 according to your needs
  }
}