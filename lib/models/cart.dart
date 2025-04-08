import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoesfor sales
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Max 270",
      price: "\$150",
      imageUrl: "lib/images/1.png",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    ),
    Shoe(
      name: "Zoom FREAK",
      price: "\$260",
      imageUrl: "lib/images/2.png",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    ),
    Shoe(
      name: "KD Treys",
      price: "\$200",
      imageUrl: "lib/images/3.png",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    ),
    Shoe(
      name: "Kyrie 6",
      price: "\$360",
      imageUrl: "lib/images/4.png",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
