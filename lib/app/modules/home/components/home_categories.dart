import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping4u/app/common/values/constants.dart';

import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();
  final List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constants.kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        controller.changeCategorySelectedIndex(index);
      },
      child: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(horizontal: Constants.kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: controller.categorySelectedIndex() == index
                      ? Colors.black
                      : Colors.black26,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: Constants.kDefaultPadding / 4),
                width: 30,
                height: 2,
                color: controller.categorySelectedIndex() == index
                    ? Colors.black
                    : Colors.black26,
              )
            ],
          ),
        ),
      ),
    );
  }
}
