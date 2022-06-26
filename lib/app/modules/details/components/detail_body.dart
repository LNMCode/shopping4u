import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/models/product.dart';

import '../controllers/detail_controller.dart';

class DetailBody extends StatelessWidget {
  DetailBody({Key? key}) : super(key: key);
  final controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
    var product = Get.arguments as Product;
    return Center(
      child: Text(product.title),
    );
  }
}
