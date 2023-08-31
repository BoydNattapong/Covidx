import 'package:covidx/pages/chats.dart';
import 'package:covidx/pages/feed.dart';
import 'package:covidx/pages/login.dart';
import 'package:covidx/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_controller.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<AppController>(
        init: AppController(),
        builder: ((controller) => Scaffold(
            appBar: AppBar(
              title: const Text("Homexxxxxxxx"),
            ),
            body: IndexedStack(
              index: controller.navIndex.value,
              children: const [
               
                ChatPage(),
                ProfilePage(),
                FeedPage(),
              ],
            ),
            bottomNavigationBar: NavigationBar(
              selectedIndex: controller.navIndex.value,
              onDestinationSelected: ((value) {
                controller.navIndex.value = value;
              }),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.feed),
                  label: 'Feed',
                ),
                NavigationDestination(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                )
              ],
            ))));
  }
}
