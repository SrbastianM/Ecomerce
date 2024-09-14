import 'package:dots_indicator/dots_indicator.dart';
import 'package:eccommerce/controller/popular_product_controller.dart';
import 'package:eccommerce/models/products_model.dart';
import 'package:eccommerce/utils/app_colors.dart';
import 'package:eccommerce/utils/app_constants.dart';
import 'package:eccommerce/utils/dimensions.dart';
import 'package:eccommerce/widgets/app_column.dart';
import 'package:eccommerce/widgets/big_text.dart';
import 'package:eccommerce/widgets/icon_and_text.dart';
import 'package:eccommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageVal = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageVal = pageController.page!;
        print("current Value is" + _currPageVal.toString());
        print(MediaQuery.of(context).size.width.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider Section
        GetBuilder<PopularProductController>(
          builder: (popularProducts) {
            return popularProducts.isLoaded
                ? Container(
                    height: Dimensions.pageView,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: popularProducts.popularProductList.length,
                      itemBuilder: ((context, index) {
                        return _buildPageItem(
                            index, popularProducts.popularProductList[index]);
                      }),
                    ),
                  )
                : CircularProgressIndicator(
                    color: AppColors.mainColor,
                  );
          },
        ),
        // Dots
        GetBuilder<PopularProductController>(
          builder: (popularProducts) {
            return DotsIndicator(
              dotsCount: popularProducts.popularProductList.isEmpty
                  ? 1
                  : popularProducts.popularProductList.length,
              position: _currPageVal,
              decorator: DotsDecorator(
                color: AppColors.mainColor,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius20)),
              ),
            );
          },
        ),
        // Recommended Food :D Section'll be made here an a few hours
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Recommended"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Sexy text"),
              )
            ],
          ),
        ),
        //Recycler view List
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height10,
              ),
              child: Row(
                children: [
                  Container(
                    width: Dimensions.listViewImg,
                    height: Dimensions.listViewImg,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radius20,
                      ),
                      color: Colors.white38,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/images/omg.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Dimensions.width10,
                          right: Dimensions.width10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: "Testing shit asf im bored",
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            SmallText(text: "Some mother fucker testing "),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndText(
                                    icon: Icons.circle_sharp,
                                    text: "Normal",
                                    iconColor: AppColors.iconColor1),
                                IconAndText(
                                    icon: Icons.location_on,
                                    text: "1.7 km",
                                    iconColor: AppColors.mainColor),
                                IconAndText(
                                    icon: Icons.access_time_rounded,
                                    text: "32 min",
                                    iconColor: AppColors.iconColor2)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index, ProductsModel popularProduct) {
    // Matrix4 es para la animacion  del slider. recibe 3 cordenadas xyz
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageVal.floor()) {
      // esta ecuacion es solo real para el index actual.
      var currScale = 1 - (_currPageVal - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      // Y aqui estamos validando el funcionamiento del siguiente slide al actual
    } else if (index == _currPageVal.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageVal - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageVal.floor() + 1) {
      var currScale = 1 - (_currPageVal - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    AppConstants.BASE_URL + "/uploads/" + popularProduct.img!),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8ee8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  )
                ],
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  left: Dimensions.height15,
                  right: Dimensions.height15,
                ),
                child: AppColumn(
                  text: popularProduct.name!,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
