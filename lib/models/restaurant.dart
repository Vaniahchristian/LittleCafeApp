import 'dart:core';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:littlecafe/models/cart_item.dart';
//import '../widgets/cartItem.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
      imagePath: 'assets/images/burger2.png',
      price: 12000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 3000),
        Addon(name: 'Bacon', price: 2000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 12000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 3000),
        Addon(name: 'Bacon', price: 2000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 12000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 3000),
        Addon(name: 'Bacon', price: 2000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 12000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 3000),
        Addon(name: 'Bacon', price: 2000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 12000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 3000),
        Addon(name: 'Bacon', price: 2000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),

    // Salads
    Food(
      name: 'Caesar Salad',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),

    //sides
    Food(
      name: 'potato chips',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'potato chips',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'potato chips',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'potato chips',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),
    Food(
      name: 'potato chips',
      description:
          'A classic Caesar salad with romaine lettuce, croutons, and parmesan cheese.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 8000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 4000),
        Addon(name: 'Avocado', price: 3000),
      ],
    ),

    // Drinks
    Food(
      name: 'Fresh Lemonade',
      description: 'A refreshing glass of fresh lemonade.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 4000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 1000),
        Addon(name: 'Ice', price: 500),
      ],
    ),
    Food(
      name: 'Fresh Lemonade',
      description: 'A refreshing glass of fresh lemonade.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 4000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 1000),
        Addon(name: 'Ice', price: 500),
      ],
    ),
    Food(
      name: 'Fresh Lemonade',
      description: 'A refreshing glass of fresh lemonade.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 4000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 1000),
        Addon(name: 'Ice', price: 500),
      ],
    ),
    Food(
      name: 'Fresh Lemonade',
      description: 'A refreshing glass of fresh lemonade.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 4000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 1000),
        Addon(name: 'Ice', price: 500),
      ],
    ),
    Food(
      name: 'Fresh Lemonade',
      description: 'A refreshing glass of fresh lemonade.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 4000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 1000),
        Addon(name: 'Ice', price: 500),
      ],
    ),

    // Desserts
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich and moist chocolate cake topped with chocolate ganache.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra frosting', price: 2000),
        Addon(name: 'Vanilla ice cream', price: 3000),
      ],
    ),
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich and moist chocolate cake topped with chocolate ganache.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra frosting', price: 2000),
        Addon(name: 'Vanilla ice cream', price: 3000),
      ],
    ),
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich and moist chocolate cake topped with chocolate ganache.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra frosting', price: 2000),
        Addon(name: 'Vanilla ice cream', price: 3000),
      ],
    ),
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich and moist chocolate cake topped with chocolate ganache.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra frosting', price: 2000),
        Addon(name: 'Vanilla ice cream', price: 3000),
      ],
    ),
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich and moist chocolate cake topped with chocolate ganache.',
      imagePath: 'assets/images/popular_foods/ic_popular_food_3.png',
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra frosting', price: 2000),
        Addon(name: 'Vanilla ice cream', price: 3000),
      ],
    ),
  ];

  // Getter to access the menu
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //operations

  //user cart
  final List<CartItem> _cart = [];

//add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of the selected addons are the same

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists , increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise,add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

// get total price of cart

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

// get total number of items on cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

//clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// HELPERS

//GENERATE A RECEIPT

  String displayCartReceipt(){

    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt .");
    receipt.writeln();


    //format the date to include up to seconds only
    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart){
      receipt.writeln( "${cartItem.quantity} * ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty){

        receipt.writeln("Add-ons : ${_formatAddons(cartItem.selectedAddons)}");
      }

      receipt.writeln();

    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();



  }

//format double value into money

  String _formatPrice(double price){

    return '\UGX ${price.toStringAsFixed(2)}';
   }

//format list of addons into a string summary
  String _formatAddons(List<Addon>addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)}")
        .join(",");

  }


}
