import 'package:restaurant_ui/data/repository/cart-repo.dart';
import 'package:restaurant_ui/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart-model.dart';
class CartController extends GetxController{
final CartRepo cartRepo;
CartController({required this.cartRepo});

Map <int,CartModel> _items={};

void addItem(ProductModel product,int quantity){
_items.putIfAbsent(product.id!, () => CartModel(
  name: product.name,
  id: product.id,
  img: product.img,
  isExist: true,
  price: product.price,
  quantity: quantity,
  time: DateTime.now().toString()
));
}
}