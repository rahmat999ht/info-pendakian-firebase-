import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Logout extends GetView<HomeController> {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure?"),
        actions: <Widget>[
          TextButton(
            child: const Text("Yes"),
            onPressed: () {
              controller.isLogin.value = false;
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
