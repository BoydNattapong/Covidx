import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt counter = 0.obs;
  RxInt navIndex = 0.obs;
  final fullname = ''.obs;

  updateFullname(String name) {
    print('name = ' + name);

    fullname.value = name;
    fullname(name);
    print(fullname);
    update([fullname]);
    // fullname = name.obs;

    // print(fullname);
  }

  increment() => counter++;
}
