
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/data/interface_controller/api_interface_controller.dart';
import 'package:shopping4u/app/modules/widgets/custom_error_widget.dart';

abstract class Initializer {
  static void init(VoidCallback runApp) {
    /// Get error widget if any widget is failed or some error
    /// during time build widget
    ErrorWidget.builder = (errorDetails) {
      return CustomErrorWidget(
        message: errorDetails.exceptionAsString(),
      );
    };

    /// Get error if have any error from synchronously in body
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        FlutterError.dumpErrorToConsole(details);
        Get.printInfo(info: details.stack.toString());
      };

      await _initServices();
      runApp();
    }, (error,stack) {
      Get.printInfo(info: 'runZonedGuarded: ${error.toString()}');
    });
  }

  static Future<void> _initServices() async {
    try {
      // await _initStorage();

      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiInterfaceController>(() => ApiInterfaceController());
  }

}