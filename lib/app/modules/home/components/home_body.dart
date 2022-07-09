import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping4u/app/common/values/constants.dart';
import 'package:shopping4u/app/models/product.dart';
import 'home_categories.dart';
import 'home_item_card_product.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Constants.kDefaultPadding),
          child: Text(
            "Shopping phone",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Constants.kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,

                ///width = 0.75*height
              ),
              itemBuilder: (_, index) => ItemProductWidget(
                product: products[index],
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}

