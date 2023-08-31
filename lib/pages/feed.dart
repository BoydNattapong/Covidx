import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/app_controller.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});
  static final _controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("feed"),
    );
  }
}
