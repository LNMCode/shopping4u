
import 'package:get/get.dart';
import 'package:shopping4u/app/models/product.dart';
import 'package:shopping4u/app/routes/app_pages.dart';

class HomeController extends GetxController {

  final RxInt _categorySelectedIndex = 0.obs;

  void changeCategorySelectedIndex(int index) {
    _categorySelectedIndex.value = index;
  }

  int categorySelectedIndex () => _categorySelectedIndex.value;

  void navToDetail(Product product) {
    Get.toNamed(Routes.DETAIL, arguments: product);
  }

}