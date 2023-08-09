import 'package:eccommerce/utils/app_colors.dart';
import 'package:eccommerce/utils/dimensions.dart';
import 'package:eccommerce/widgets/app_icon.dart';
import 'package:eccommerce/widgets/big_text.dart';
import 'package:eccommerce/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                child: Center(
                  child: BigText(
                    text: 'Testing random text',
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
              background: Image.asset(
                "asset/images/s.png",
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
                  child: ExpandableText(
                      text:
                          "When the lights have turned to greyOn the dawning final daySee the sun now fade awayCan we find the words to say?All the times we fought in vainhrough the years and seasons changeBut we all still feel the sameAs we stand before the worldFeel the engines fireFeel the thunder riseNow touch the path of gloryPower to the turbo driveHot wheels of fire burn strongFlash lightning fries the brainOn a course to no tomorrowDriving all of us insaneCity lights laid out before usGo forth for now your time has comeNow your time has comeIn flash of blue steel, to the far horizonsSupersonic power on the wings of a dreamDown the roads so far, with nowhere to hideLike a star shooting right from the skySlow down for no one, never look back now tonightFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenaline surgingWheels of fire will burn tonightLeave the trials of life behindBlasting on at the speed of lightTearing up the highway to oblivionFive hundred miles an hourAll gravity defiedWe touched the taste of glorySo close the finish lineBright lights still glare before usGive it up for now your time has comeNow your time has comeLike a demon on wheels, through the cursed blue mountainsDon't let a minute go by, give it all 'til the endOn a one way street living in the fast laneFeel the passion that runs through your veinsFaster with fury to the end of all our daysFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenalin surgingWheels of fire will burn tonightLeave the trials of life behindlasting on at the speed of lightearing up the highway to oblivionWe live for the night, we long for the dayThe glory foreverForever we fight, aside from the night lost out in spaceA lifetime of dreamingBut don't ever stop believingThe passion, the fight deep insideThe power before meAscend to the edge of gloryTonight shooting far across the skyFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenalin surgingWheels of fire will burn tonightLeave the trials of ife behindlasting on at the speed of lightWhen the lights have turned to greyOn the dawning final daySee the sun now fade awayCan we find the words to say?All the times we fought in vainhrough the years and seasons changeBut we all still feel the sameAs we stand before the worldFeel the engines fireFeel the thunder riseNow touch the path of gloryPower to the turbo driveHot wheels of fire burn strongFlash lightning fries the brainOn a course to no tomorrowDriving all of us insaneCity lights laid out before usGo forth for now your time has comeNow your time has comeIn flash of blue steel, to the far horizonsSupersonic power on the wings of a dreamDown the roads so far, with nowhere to hideLike a star shooting right from the skySlow down for no one, never look back now tonightFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenaline surgingWheels of fire will burn tonightLeave the trials of life behindBlasting on at the speed of lightTearing up the highway to oblivionFive hundred miles an hourAll gravity defiedWe touched the taste of glorySo close the finish lineBright lights still glare before usGive it up for now your time has comeNow your time has comeLike a demon on wheels, through the cursed blue mountainsDon't let a minute go by, give it all 'til the endOn a one way street living in the fast laneFeel the passion that runs through your veinsFaster with fury to the end of all our daysFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenalin surgingWheels of fire will burn tonightLeave the trials of life behindlasting on at the speed of lightearing up the highway to oblivionWe live for the night, we long for the dayThe glory foreverForever we fight, aside from the night lost out in spaceA lifetime of dreamingBut don't ever stop believingThe passion, the fight deep insideThe power before meAscend to the edge of gloryTonight shooting far across the skyFeel the power beyond redlineLost forever in space and timeHigher and higher, adrenalin surgingWheels of fire will burn tonightLeave the trials of ife behindlasting on at the speed of light"),
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
                  text: "\$12.88 " + " X " + " 0",
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
