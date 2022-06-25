import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/common/utils/initializer.dart';
import 'package:shopping4u/app/routes/app_pages.dart';

import 'app/modules/widgets/base_widget.dart';

void main() {
  Initializer.init(() => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        title: "Shopping for you",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        initialBinding: InitialBinding(),
        getPages: AppPages.routes,
        builder: (_, child) => BaseWidget(
          child: child ?? const SizedBox.shrink()
        ),
      ),
    );
  }
}
