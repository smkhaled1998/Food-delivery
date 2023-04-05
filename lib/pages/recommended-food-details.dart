

import 'package:flutter/material.dart';
import 'package:restaurant_ui/routes/route-helper.dart';
import 'package:restaurant_ui/shared/styles/dimension.dart';
import 'package:restaurant_ui/shared/widget/big-text.dart';
import 'package:restaurant_ui/shared/widget/expandable-text-widget.dart';
import '../shared/styles/app-color.dart';
import '../shared/widget/app-icon.dart';
import 'package:get/get.dart';
class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [
               GestureDetector(
                   onTap: (){
                     Get.toNamed(RouteHelper.getInitialPage());
                   },
                   child: AppIcon(icon: Icons.clear,)),
               AppIcon(icon: Icons.shopping_cart,)
             ],
            ),
            backgroundColor: AppColor.yellowColor,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimension.radius20),
                          topRight: Radius.circular(Dimension.radius20))),
                  child: Center(child: BigText(text: "Chinese Food"))),
            ),
            expandedHeight: Dimension.expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,

                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
                  child: const ExpandableTextWidget(
                      text: "Text Tex Text Text Text Text Text T  TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text  TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTe TextText Text Text Text T Text Text TextTeT Text Text TextTe TextText Text Text Text T Text Text TextTeText Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text"),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
         padding: EdgeInsets.only(
           left: Dimension.width20*2.5,
           right: Dimension.width20*2.5,
           top: Dimension.height10,
           bottom: Dimension.height10,
         ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(size: 30,
                iconColor:Colors.white,iconSize:Dimension.iconSize24,icon: Icons.remove,backgroundColor: AppColor.mainColor,),
              BigText(text: "\$12.88 X 0",size:Dimension.font26 ,),
              AppIcon(
                size: 30,
                iconColor:Colors.white,iconSize:Dimension.iconSize24,icon: Icons.add,backgroundColor: AppColor.mainColor,),
            ],
          ),
        ),
          Container(
            height: Dimension.height120,
            padding: EdgeInsets.only(top: Dimension.height30,bottom:Dimension.height30,left: Dimension.height20,right: Dimension.height20 ),
            decoration: BoxDecoration(
                color: AppColor.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.radius20*2),
                  topRight: Radius.circular(Dimension.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimension.width20,vertical: Dimension.height20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius20)
                  ),
                  child: Center(child: Icon(Icons.favorite,color: AppColor.mainColor))
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimension.width20,vertical: Dimension.height20),
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius20)
                  ),
                  child: Row(
                    children: [

                      BigText(text: "\$10 | Add to cart"),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
