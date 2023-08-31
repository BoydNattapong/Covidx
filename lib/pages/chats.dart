import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/app_controller.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static final _controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Center(
        child:  
        Obx(
      () => Text(
        _controller.fullname.value,
      ),
  
    ));
  }
}
