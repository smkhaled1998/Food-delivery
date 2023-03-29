import 'package:food_delivery/controller/popular-product-controller.dart';
import 'package:food_delivery/data/repository/popular-product-repo.dart';
import 'package:food_delivery/shared/app-constants.dart';
import 'package:get/get.dart';

import '../data/api/api-client.dart';
Future<void>init()async{
Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.Base_URL ));// >>>>>> "https://mvs.bslmeiyu.com"
Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));
Get.lazyPut(()=>PopularProductController(popularProductRepo: Get.find()));
}