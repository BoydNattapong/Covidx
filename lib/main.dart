import 'package:covidx/pages/covidscreen.dart';
import 'package:covidx/pages/home.dart';
import 'package:covidx/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/chats.dart';
import 'pages/feed.dart';
import 'pages/home2.dart';
import 'pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/covidscreen', page: () => CovidScreenPage()),

        //GetPage(name: '/home2', page: () => HomePage2()),
        // GetPage(name: '/chat', page: () => ChatPage()),
        //  GetPage(name: '/feed', page: () => FeedPage()),
        // GetPage(name: '/profile', page: () => ProfilePage()),
      ],
    );
  }
}
