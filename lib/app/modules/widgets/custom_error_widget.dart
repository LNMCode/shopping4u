
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;

  const CustomErrorWidget({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          message ?? "Something is error",
          style: Get.textTheme.headline5,
        ),
      ),
    );
  }
}
