import 'package:eccommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
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
              width: Dimensions.width10,
            ),
            SmallText(text: "428"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1202"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "Comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
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
              iconColor: AppColors.iconColor2,
            )
          ],
        ),
      ],
    );
  }
}
