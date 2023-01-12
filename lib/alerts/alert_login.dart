import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:professional/controllers/home_controller.dart';

class Login extends GetView<HomeController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Login"),
      content: Form(
        key: controller.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please input your username";
                }
                return null;
              },
              controller: controller.myUsernameController,
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please input password";
                }
                return null;
              },
              maxLength: 16,
              obscureText: true,
              // maxLengthEnforced: true,
              controller: controller.myPasswordController,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            MaterialButton(
              minWidth: 80.0,
              height: 40.0,
              color: Colors.lightBlue,
              textColor: Colors.white,
              onPressed: () {
                controller.isLogin.value = true;
                controller.username = controller.myUsernameController.text;
                controller.password = controller.myPasswordController.text;

                if (controller.formKey.currentState!.validate()) {
                  if (controller.username == "user" &&
                      controller.password == "123") {
                    Navigator.pop(context);
                    // isSearch.value = true;
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Login Failed"),
                        content:
                            const Text("Username or password is incorrect"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  }
                }
              },
              child: const Text("Login"),
            ),
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                controller.isLogin.value = false;
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
