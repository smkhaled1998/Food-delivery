import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_ui/controller/cart-controller.dart';
import 'package:restaurant_ui/data/repository/popular-product-repo.dart';
import 'package:restaurant_ui/shared/styles/app-color.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';
class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  int _quantity=0;
  int get quantity=>_quantity;

  int _cartItems=0;
  int get cartItems=>_cartItems+_quantity;

  bool _isLoaded=false;
  bool get isLoaded=>_isLoaded;

  late CartController _cart;


  PopularProductController({required this.popularProductRepo});
    List <dynamic> _popularProductList=[];
    List <dynamic> get popularProductList=> _popularProductList;

    Future <void> getPopularProductList()async{
    Response response=await popularProductRepo.getPopularProductList();

    if(response.statusCode==200){
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
       _isLoaded=true;
      update();
    }

  }

  void setQuantity(bool isIncremented){
      if(isIncremented){
        print("object");
        _quantity=checkQuantity(_quantity+1);
      } else{
        print("not object");
        _quantity=checkQuantity(_quantity-1);
      }
     update();
  }
  int checkQuantity(int quantity){
      if(quantity <0)
        { 
          Get.snackbar("Item Count", "You can\'t reduce more",
          backgroundColor: AppColor.mainColor,
          colorText:  Colors.white);
          return 0;}
      else if (quantity>10)
        {
          Get.snackbar("Item Count", "You can\'t increase more",
              backgroundColor: AppColor.mainColor,
              colorText: Colors.white
        );
          return 10;}
      else {
        return quantity;
      }
  }

  void initQuantity(CartController cart){
      _quantity=0;
      _cartItems=0;
      _cart=cart;
  }

  void addItems(ProductModel product){
     _cart.addItem(product, _quantity);
  }

}