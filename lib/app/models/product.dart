import 'dart:ui';

import '../common/values/app_images.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Iphone 13",
      price: 123,
      size: 12,
      description: dummyText,
      image: AppImages.productIP13,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Iphone 12",
      price: 234,
      size: 8,
      description: dummyText,
      image: AppImages.productIP12,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Iphone XS",
      price: 567,
      size: 10,
      description: dummyText,
      image: AppImages.productIPXS,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Iphone XS Max",
      price: 188,
      size: 11,
      description: dummyText,
      image: AppImages.productIPXSMax,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Iphone 11",
      price: 655,
      size: 12,
      description: dummyText,
      image: AppImages.productIP11,
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Iphone 14",
    price: 789,
    size: 12,
    description: dummyText,
    image: AppImages.productIP14,
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
