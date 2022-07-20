import 'package:get/get.dart';
import 'package:smile/core/services/product_services.dart';
import 'package:smile/data/model/products_api_model.dart';

class ProductController extends GetxController {
  var productList = <ProductsModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  void getProducts() async {
    var products = await ProductServices.getProduct();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
