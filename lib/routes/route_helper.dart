import 'package:eccommerce/pages/cart/cart_page.dart';
import 'package:eccommerce/pages/food/popular_food_datail.dart';
import 'package:eccommerce/pages/food/recommended_food_detail.dart';
import 'package:eccommerce/pages/home/home_page.dart';
import 'package:eccommerce/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static String initial = "/";
  static String popularFood = "/popular-food";
  static String recommendedFood = "/recommended-food";
  static String cartPage = "/cart-page";

  static String getInitial() => '$initial';
  static String getPopularFood(int index, String page) =>
      '$popularFood?index=$index&page=$page';
  static String getRecommendedFood(int index) =>
      '$recommendedFood?index=$index';
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return HomePage();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var page = Get.parameters["page"];
          var pageId = Get.parameters['index'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
            page: page!,
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
    GetPage(
      name: cartPage,
      page: () {
        var pageId = Get.parameters['index'];
        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
