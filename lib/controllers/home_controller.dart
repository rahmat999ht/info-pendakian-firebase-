import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final counter = 0.obs;
  final isLoading = false.obs;
  final isLogin = false.obs;
  final isSearch = false.obs;

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1518070588484-2b53926cba76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3VudW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1538179277954-803c91b55fee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3VudW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1571967260643-8c677cf925df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z3VudW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1542261777448-23d2a287091c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80 ',
    'https://images.unsplash.com/photo-1536077891673-5a03ebcd8ebe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3VudW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyMTM5NzUyfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
  ];

  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String username = "", password = "";
  //tambahkan form
  final formKey = GlobalKey<FormState>();
}
