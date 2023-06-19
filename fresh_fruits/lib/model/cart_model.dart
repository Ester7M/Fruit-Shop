import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Mango", "1.20", "lib/images/mangoes.jpg", Colors.orange],
    ["Orange", "1.00", "lib/images/oranges.jpg", Colors.deepOrange],
    ["Apple", "1.25", "lib/images/apples.jpg", Colors.greenAccent],
    ["Pineapple", "2.80", "lib/images/pineapples.jpg", Colors.yellowAccent],
    ["Peach", "1.50", "lib/images/peaches.jpg", Colors.orangeAccent],
    ["Strawberry", "3.50", "lib/images/strawberries.jpg", Colors.red],
    ["Tomato", "1.45", "lib/images/tomatoes.jpg", Colors.redAccent],
    ["Pear", "1.05", "lib/images/pears.jpg", Colors.lightGreenAccent],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
