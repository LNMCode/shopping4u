import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/data/interface_controller/api_interface_controller.dart';
import 'package:shopping4u/app/modules/widgets/custom_retry_widget.dart';

class BaseWidget extends StatelessWidget {
  final Widget child;

  const BaseWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApiInterfaceController>(
      builder: (c) => Stack(
        children: [
          Positioned.fill(child: child),
          Visibility(
            visible: c.retry != null && c.error != null,
            child: Positioned.fill(
              child: Scaffold(
                body: CustomRetryWidget(
                  onPressed: c.onRetryTap,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
