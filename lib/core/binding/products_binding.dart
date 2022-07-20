import 'package:get/get.dart';
import 'package:smile/controller/product_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}
