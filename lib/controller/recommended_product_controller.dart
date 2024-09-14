import 'package:eccommerce/data/repository/popular_product_repo.dart';
import 'package:eccommerce/data/repository/recommended_product_repo.dart';
import 'package:eccommerce/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductController;
  RecommendedProductController({required this.recommendedProductController});

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductController.getRecommendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }
}
