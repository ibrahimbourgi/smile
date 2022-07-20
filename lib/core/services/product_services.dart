import 'package:http/http.dart' as http;
import 'package:smile/data/model/products_api_model.dart';
import 'package:smile/setting/text_utils.dart';

class ProductServices {
  static Future<List<ProductsModel>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl/products'));
    if (response.statusCode == 200) {
      var jasonData = response.body;
      return productsModelFromJson(jasonData);
    } else {
      return throw Exception('Faild to Product');
    }
  }
}
