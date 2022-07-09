import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/modules/home/controllers/home_controller.dart';

import '../../../common/values/constants.dart';
import '../components/home_body.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeBody(),
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
