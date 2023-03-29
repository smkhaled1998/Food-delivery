import 'package:flutter/material.dart';

import '../styles/app-color.dart';
import '../styles/dimension.dart';
import 'big-text.dart';
import 'icon-and-text-widget.dart';
import 'small-text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
        SizedBox(height: Dimension.height10,),
        Row(
          children: [
            Wrap(

              children: List.generate(5, (index) => const Icon(Icons.star,color: AppColor.mainColor,size: 10,)),
            ),
            const SizedBox(width: 10,),
            SmallText(text: "4.5"),
            const SizedBox(width: 10,),
            SmallText(text: "1287"),
            const SizedBox(width: 10,),
            SmallText(text: "comments"),
          ],),
        SizedBox(height: Dimension.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColor.iconColor1),

            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7 km",
                iconColor: AppColor.mainColor),

            IconAndTextWidget(
                icon: Icons.watch_later_outlined,
                text: "32m",
                iconColor: AppColor.iconColor1),

          ],
        ),


      ],
    );
  }
}
