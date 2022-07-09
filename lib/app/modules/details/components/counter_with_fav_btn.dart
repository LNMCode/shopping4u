import 'dart:ui';

import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const CartCounter(),
          Container(
            padding: const EdgeInsets.all(8),
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/heart.png"),
          )
        ],
      ),
    );
  }
}
