import 'package:eccommerce/controller/popular_product_controller.dart';
import 'package:eccommerce/controller/recommended_product_controller.dart';
import 'package:eccommerce/routes/route_helper.dart';
import 'package:eccommerce/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.APP_NAME,
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
