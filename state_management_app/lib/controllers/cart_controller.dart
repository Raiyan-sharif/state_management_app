import 'package:get/get.dart';
import 'package:state_management_app/models/product.dart';

class CartController extends GetxController{
  var cartItems = List<Product>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum+item.price );

  addToCart(Product product){
    cartItems.add(product);
  }
}