import 'package:eccommerce/controller/recommended_product_controller.dart';
import 'package:eccommerce/routes/route_helper.dart';
import 'package:eccommerce/utils/app_colors.dart';
import 'package:eccommerce/utils/app_constants.dart';
import 'package:eccommerce/utils/dimensions.dart';
import 'package:eccommerce/widgets/app_icon.dart';
import 'package:eccommerce/widgets/big_text.dart';
import 'package:eccommerce/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  int pageId;

  RecommendedFoodDetail({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                GestureDetector(
                    onTap: () {},
                    child: AppIcon(icon: Icons.shopping_cart_outlined))
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                child: Center(
                  child: BigText(
                    text: product.name,
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10, top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                ),
              ),
              preferredSize: Size.fromHeight(20),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL + AppConstants.UPLOADS + product.img,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableText(text: product.description!),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            //margin: ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$${product.price} X 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeighBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.height20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
