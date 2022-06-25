import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class CustomRetryWidget extends StatelessWidget {
  final String error;
  final VoidCallback onPressed;

  const CustomRetryWidget({Key? key,
    required this.onPressed,
    this.error = "Something went is failed"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error),
          SizedBox(height: 16.h),
          TextButton(onPressed: onPressed, child: const Text("Try again"))
        ],
      ),
    );
  }
}
