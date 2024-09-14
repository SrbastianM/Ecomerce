import 'package:eccommerce/controller/popular_product_controller.dart';
import 'package:eccommerce/pages/food/popular_food_datail.dart';
import 'package:eccommerce/pages/food/recommended_food_detail.dart';
import 'package:eccommerce/pages/home/food_page_body.dart';
import 'package:eccommerce/pages/home/main_food_page.dart';
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
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainFoodPage());
  }
}
