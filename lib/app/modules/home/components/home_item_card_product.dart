import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping4u/app/common/values/constants.dart';
import 'package:shopping4u/app/models/product.dart';

import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class ItemProductWidget extends StatelessWidget {
  final Product product;
  final Function press;

  ItemProductWidget({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.navToDetail(product);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(Constants.kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.network(product.image),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Constants.kDefaultPadding / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: Colors.black45),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
