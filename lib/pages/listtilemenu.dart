import 'package:covidx/pages/covidscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListtilemenuPage extends StatelessWidget {
  const ListtilemenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: ListView(padding: const EdgeInsets.all(10.0), children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.account_circle),
            backgroundColor: Colors.green,
          ),
          title: Text('แบบคัดกรองความวิตกกังวล (COVID-19)'),
          subtitle: Text('Screening Covid-19 Online Donsak Distinct Public'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Get.to(CovidScreenPage());
          },
          tileColor: Color.fromRGBO(5, 104, 57, 0.1),
        )
      ]))),
    );
  }
}
