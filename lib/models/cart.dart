import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Barbershop',
      price: '236',
      description: 'The clean design of the latest signature shoe',
      imagePath: 'lib/images/jordan-barbershop.webp',
    ),
    Shoe(
      name: 'Husky White',
      price: '289',
      description: 'The shoe made for hustlers.',
      imagePath: 'lib/images/jordan-husky-white.webp',
    ),
    Shoe(
      name: 'Retro High',
      price: '159',
      description: 'The classic retro R&B signature shoe',
      imagePath: 'lib/images/jordan-retro-high.webp',
    ),
    Shoe(
      name: 'Rings',
      price: '297',
      description:
          'The Rings for the funky, awesome vibes makes you feel dance!',
      imagePath: 'lib/images/jordan-rings.webp',
    ),
    Shoe(
      name: 'Zoom CMFT',
      price: '224',
      description: 'Your toes will be blessed to have Jordan Zoom Comfort.',
      imagePath: 'lib/images/jordan-zoom-CMFT.webp',
    ),
    Shoe(
      name: 'Retro',
      price: '152',
      description: 'The clasic jordan Sneakers gets your day covered.',
      imagePath: 'lib/images/jordan-retro.webp',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  //add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
