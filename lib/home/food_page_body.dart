import 'package:dots_indicator/dots_indicator.dart';
import 'package:eccommerce/utils/app_colors.dart';
import 'package:eccommerce/widgets/big_text.dart';
import 'package:eccommerce/widgets/icon_and_text.dart';
import 'package:eccommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

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
    setState(() {
      pageController.addListener(() {
        _currPageVal = pageController.page!;
        print("current Value is" + _currPageVal.toString());
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
        Container(
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return _buildPageItem(index);
            }),
          ),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageVal,
          decorator: DotsDecorator(
            color: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
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
        ..setTranslationRaw(0, _height * (1 - _scaleFactor), 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              boxShadow: [
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
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("asset/images/s.png")),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 140,
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Testing text above"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "428"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1202"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "Comments"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
