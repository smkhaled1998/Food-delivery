import 'package:restaurant_ui/pages/main-food-page.dart';
import 'package:restaurant_ui/pages/popular-food-details.dart';
import 'package:restaurant_ui/pages/recommended-food-details.dart';
import 'package:get/get.dart';
class RouteHelper{

  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";

  static String getInitialPage()=>"$initial";
  static String getPopularFood(int pageId)=>"$popularFood?pageId=$pageId";
  static String getRecommendedFood()=>"$recommendedFood";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          // var pageId=Get.parameters["pageId"];
          // return PopularFoodDetails(pageId:int.parse(pageId!),);
          return PopularFoodDetails();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          return RecommendedFoodDetails();
        },
        transition: Transition.fadeIn),
  ];
}