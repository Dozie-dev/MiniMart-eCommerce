import 'package:get/get.dart';
import 'package:minimart_app/model/product_model.dart';

class CartController extends GetxController {
  var cartItems = <ProductModel, int>{}.obs;

  void addCartItem(ProductModel products) {
    if (cartItems.containsKey(products)) {
      cartItems[products] = cartItems[products]! + 1;
    } else {
      cartItems[products] = 1;
    }
  }

  void removeCartItem(ProductModel products) {
    if (cartItems.containsKey(products) && cartItems[products]! > 1) {
      cartItems[products] = cartItems[products]! - 1;
    } else {
      cartItems.remove(products);
    }
  }

  void deleteCartItem(ProductModel products) {
    cartItems.remove(products);
  }

  void clearCart() {
    cartItems.clear();
  }

  int get itemCount => cartItems.length;
  int get totalQuantity => cartItems.values.fold(0, (sum, qty) => sum + qty);

  double get subtotal => cartItems.entries.fold(
    0,
    (sum, entry) => sum + entry.key.price * entry.value,
  );

  double get deliveryFee => 10.0;

  double get total => subtotal + deliveryFee;
}
