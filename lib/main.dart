import 'package:flutter/material.dart';
import 'package:food_delivery/controller/popular-product-controller.dart';
import 'package:food_delivery/routes/route-helper.dart';
import 'pages/main-food-page.dart';
import 'package:food_delivery/pages/recommended-food-details.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        // Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.getInitialPage(),
      getPages: RouteHelper.routes,
    );
  }
}

