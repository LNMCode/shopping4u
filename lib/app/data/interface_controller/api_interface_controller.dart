
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/data/error/api_error.dart';

class ApiInterfaceController extends GetxController {
  ApiError? error;

  VoidCallback? retry;

  void onRetryTap() {
    error = null;
    retry?.call();
    update();
  }
}