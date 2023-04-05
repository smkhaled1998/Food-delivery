import 'package:restaurant_ui/data/api/api-client.dart';
import 'package:get/get.dart';

import '../../shared/app-constants.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({
    required this.apiClient
});

  Future <Response> getPopularProductList()async{
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
    //>>>> "/api/v1/products/popular"   end_point
  }
}