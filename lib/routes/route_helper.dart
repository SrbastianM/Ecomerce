import 'package:eccommerce/pages/food/popular_food_datail.dart';
import 'package:eccommerce/pages/food/recommended_food_detail.dart';
import 'package:eccommerce/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static String initial = "/";
  static String popularFood = "/popular-food";
  static String recommendedFood = "/recommended-food";

  static String getInitial() => '$initial';
  static String getPopularFood(int index) => '$popularFood?index=$index';
  static String getRecommendedFood(int index) =>
      '$recommendedFood?index=$index';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return MainFoodPage();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['index'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['index'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
  ];
}
