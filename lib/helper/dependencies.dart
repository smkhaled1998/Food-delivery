import 'package:restaurant_ui/controller/popular-product-controller.dart';
import 'package:restaurant_ui/data/repository/popular-product-repo.dart';
import 'package:restaurant_ui/shared/app-constants.dart';
import 'package:get/get.dart';

import '../controller/cart-controller.dart';
import '../data/api/api-client.dart';
import '../data/repository/cart-repo.dart';
Future<void>init()async{
Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.Base_URL ));// >>>>>> "https://mvs.bslmeiyu.com"

Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));
Get.lazyPut(()=>CartRepo());

Get.lazyPut(()=>PopularProductController(popularProductRepo: Get.find()));
Get.lazyPut(()=>CartController(cartRepo:  Get.find()));
}