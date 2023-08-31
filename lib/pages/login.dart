import 'package:covidx/controllers/app_controller.dart';
import 'package:covidx/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();
  TextEditingController get textUsernameController => TextEditingController();
  TextEditingController get textPasswordController => TextEditingController();

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
            key: formKey,
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
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    'เข้าสู่ระบบ',
                    textScaleFactor: 3,
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.normal),
                  ),
                ]),

                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: textUsernameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle,
                    ),
                    hintText: 'Usernamne',
                    label: Text("Username"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                // password
                TextFormField(
                  controller: textPasswordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    hintText: 'Password',
                    label: Text("Password"),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
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
                    // _controller.fullname = "ทรงวุฒิ ศรีสวัสดิ์".obs;

                    _controller.updateFullname('oooooxxxxxx');

                    // '${_controller.fullname='00000'}';
                    Get.offAll(HomePage());
                    // Get.defaultDialog(title: '0123456789');
                    // Get.changeTheme(ThemeData.dark());
                    Get.snackbar('ยินดีต้อนรับ', 'คุณทรงวุฒิ ศรีสวัสดิ์');

                    // print('${_controller.fullname}');
                  },
                  child: const Text("เข้าสู่ระบบ"),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'No Account? ',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.normal),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign up here!',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.normal),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
