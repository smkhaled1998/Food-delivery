import 'package:flutter/material.dart';
import 'package:restaurant_ui/controller/cart-controller.dart';
import 'package:restaurant_ui/pages/main-food-page.dart';
import 'package:restaurant_ui/shared/styles/dimension.dart';
import 'package:restaurant_ui/shared/widget/app-column.dart';
import 'package:restaurant_ui/shared/widget/app-icon.dart';
import 'package:restaurant_ui/shared/widget/expandable-text-widget.dart';

import 'package:get/get.dart';
import '../controller/popular-product-controller.dart';
import '../shared/styles/app-color.dart';
import '../shared/widget/big-text.dart';


class PopularFoodDetails extends StatelessWidget {
  // int pageId;
   PopularFoodDetails({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var product= Get.find<PopularProductController>().popularProductList[0];
    Get.find<PopularProductController>().initQuantity(Get.find<CartController>());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
              right: 0,
              left: 0,
              child: Container(
            height: Dimension.popularFoodImgSize,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                fit: BoxFit.cover ,
                image: AssetImage("assets/image/food0.png")
              )
            ),
          )),
          Positioned(
              top: Dimension.height45,
              left: Dimension.width20,
              right: Dimension.width20,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                      onTap:(){
                        Get.to(()=> MainFoodPage());
                      },
                      child: AppIcon(icon: Icons.arrow_back_ios,)),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined),
          ],)),
          Positioned(
              top: Dimension.popularFoodImgSize-Dimension.height20,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                width: double.maxFinite,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(Dimension.radius20),topLeft: Radius.circular(Dimension.radius20))
                ),

                padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,top: Dimension.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn( text: "Chinese Side",),
                    SizedBox(height: Dimension.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height:  Dimension.height20,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text: "Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text Text Text TextText Text Text"),
                      ),
                    )
                  ],
                ),

              )

          ),

        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct){
          return Container(
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
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            popularProduct.setQuantity(false);
                          },
                          child: Icon(Icons.remove,color: AppColor.signColor,)),
                      SizedBox(width: Dimension.width10/2,),

                      BigText(text: "${popularProduct.quantity}"),
                      SizedBox(width: Dimension.width10/2,),
                      GestureDetector(
                          onTap:(){
                            popularProduct.setQuantity(true);
                          },
                          child: Icon(Icons.add,color: AppColor.signColor))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimension.width20,vertical: Dimension.height20),
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius20)
                  ),
                  child: Row(
                    children: [

                      GestureDetector(
                          onTap: (){
                            // popularProduct.addItems(product);
                          },
                          child: BigText(text: "\$10 | Add to cart")),

                    ],
                  ),
                )
              ],
            ),
          );
        },

      ),

    );
  }
}
