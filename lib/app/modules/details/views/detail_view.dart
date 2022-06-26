import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/common/values/constants.dart';
import 'package:shopping4u/app/modules/details/controllers/detail_controller.dart';

import '../components/detail_body.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: DetailBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.account_circle_outlined),
        color: Colors.black45,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black45,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          color: Colors.black45,
          onPressed: () {},
        ),
        SizedBox(width: Constants.kDefaultPadding / 2)
      ],
    );
  }
}
