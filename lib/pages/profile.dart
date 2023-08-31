import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:covidx/controllers/app_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static final _controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // appbar

      // body
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.login,
                    color: Colors.grey[700],
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ]),

                const SizedBox(
                  height: 16,
                ),

                const SizedBox(
                  height: 16,
                ),
                // button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //  primary: Colors.black,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {
                    //  _controller.updateFullname('oooooxxxxxx');

                    // '${_controller.fullname='00000'}';

                    Get.snackbar(
                        _controller.fullname.value, 'คุณทรงวุฒิ ศรีสวัสดิ์');

                    // print('${_controller.fullname}');
                  },
                  child: const Text("เข้าสู่ระบบ"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
