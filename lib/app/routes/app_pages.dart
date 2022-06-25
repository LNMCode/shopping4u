import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/modules/home/bindings/home_binding.dart';
import 'package:shopping4u/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
