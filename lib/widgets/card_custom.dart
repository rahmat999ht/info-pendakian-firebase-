import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional/controllers/home_controller.dart';
import 'package:professional/models/model_gunung.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.data,
    required this.onTap,
  }) : isStream = true;

  final ModelGunung? data;
  final void Function()? onTap;
  final bool isStream;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 115,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    controller.imgList[1],
                    // scale: 20,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('data!.namaGunung'),
          ],
        ),
      ),
    );
  }
}
