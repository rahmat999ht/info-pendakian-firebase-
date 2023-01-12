import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional/alerts/alert_login.dart';

import '../alerts/alert_logout.dart';
import '../controllers/home_controller.dart';
import '../widgets/card_custom.dart';

class MyHomePage extends GetView<HomeController> {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Assalamu Alaikum",
                style: TextStyle(fontSize: 16, color: Colors.black)),
            Text(
              "Rahmat Hidayat",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Obx(
            () => (controller.isLogin.isFalse)
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: const Icon(Icons.person,
                          size: 32, color: Colors.lightBlue),
                      onPressed: () {
                        Get.dialog(
                          const Login(),
                        );
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: const Icon(Icons.exit_to_app,
                          size: 30, color: Colors.lightBlue),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const Logout(),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  // SizedBox(
                  //   height: 248,
                  //   child: Swiper(
                  //     onIndexChanged: (index) {
                  //       controller.counter.value = index;
                  //     },
                  //     viewportFraction: 0.94,
                  //     scale: 0.9,
                  //     itemCount: controller.imgList.length,
                  //     itemBuilder: (context, index) {
                  //       return ClipRRect(
                  //         borderRadius: BorderRadius.circular(20),
                  //         child: Image.network(controller.imgList[index]),
                  //       );
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Padding(padding: EdgeInsets.all(10)),
                            Text(
                              "   Nama Gunung",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: 3,
                        padding: const EdgeInsets.only(bottom: 10),
                        itemBuilder: (context, index) {
                          return const CardCustom(
                            data: null,
                            onTap: null,
                          );
                          // return Text(controller.listProv[index].namaProvinsi);
                        },
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
