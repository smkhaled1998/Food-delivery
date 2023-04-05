import 'package:flutter/material.dart';
import 'package:restaurant_ui/shared/styles/app-color.dart';
import 'package:restaurant_ui/shared/styles/dimension.dart';
import 'package:restaurant_ui/shared/widget/big-text.dart';

import 'food-page-body.dart';
import '../shared/widget/small-text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: Dimension.height45, bottom: Dimension.height15),
          padding: EdgeInsets.only(
              left: Dimension.width20, right: Dimension.width20),
          child:  Row(
            children: [
              Column(
                children: [
                  BigText(
                    text: 'Oman',
                    color: AppColor.mainColor,
                  ),
                  SmallText(
                    text: "Masqut",
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: Dimension.height45,
                height: Dimension.height45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    color: AppColor.mainColor),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: Dimension.iconSize24,
                ),
              )
            ],
          ),
        ),
        Expanded(child: const SingleChildScrollView(child: FoodPageBody()))
      ],
    ));
  }
}
