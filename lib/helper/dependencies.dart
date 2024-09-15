import 'package:eccommerce/controller/cart_controller.dart';
import 'package:eccommerce/controller/popular_product_controller.dart';
import 'package:eccommerce/controller/recommended_product_controller.dart';
import 'package:eccommerce/data/api/api_client.dart';
import 'package:eccommerce/data/repository/cart_repo.dart';
import 'package:eccommerce/data/repository/popular_product_repo.dart';
import 'package:eccommerce/data/repository/recommended_product_repo.dart';
import 'package:eccommerce/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // Client Api
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() =>
      RecommendedProductController(recommendedProductController: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
