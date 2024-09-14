import 'package:eccommerce/controller/popular_product_controller.dart';
import 'package:eccommerce/data/api/api_client.dart';
import 'package:eccommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // Client Api
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com/"));
  //repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
