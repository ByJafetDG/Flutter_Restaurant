import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_modern/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Vaquera",
        description:
            "Torta de res de la más alta calidad, marca Certified Angus Beef (CAB), con el INIGUALABLE SAZÓN DEL CHEF (acompañadas de papas a la francesa). Con queso blanco derretido, cebolla caramelizada, hongos silvestres y salsa BBQ.",
        imagePath: "lib/images/hamburgers/hamburguesacuatro.jpg",
        price: 8000,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra torta", price: 1000),
          Addon(name: "Extra papas a la francesa", price: 800),
          Addon(name: "Extra queso", price: 500),
        ]),

    Food(
        name: "Americana",
        description:
            "Torta de res de la más alta calidad, marca Certified Angus Beef (CAB), con el INIGUALABLE SAZÓN DEL CHEF (acompañadas de papas a la francesa). Con queso blanco derretido, cebolla caramelizada, hongos silvestres y salsa BBQ.",
        imagePath: "lib/images/hamburgers/hamburguesa.jpg",
        price: 8000,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra torta", price: 1000),
          Addon(name: "Extra papas a la francesa", price: 800),
          Addon(name: "Extra queso", price: 500),
        ]),

    Food(
        name: "Hamburguesa de res",
        description:
            "Torta de res de la más alta calidad, marca Certified Angus Beef (CAB), con el INIGUALABLE SAZÓN DEL CHEF (acompañadas de papas a la francesa). Con queso blanco derretido, cebolla caramelizada, hongos silvestres y salsa BBQ.",
        imagePath: "lib/images/hamburgers/hamburguesados.jpg",
        price: 8500,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra torta", price: 1000),
          Addon(name: "Extra papas a la francesa", price: 800),
          Addon(name: "Extra queso", price: 500),
        ]),

    Food(
        name: "Hamburguesa de pollo",
        description:
            "Torta de res de la más alta calidad, marca Certified Angus Beef (CAB), con el INIGUALABLE SAZÓN DEL CHEF (acompañadas de papas a la francesa). Con queso blanco derretido, cebolla caramelizada, hongos silvestres y salsa BBQ.",
        imagePath: "lib/images/hamburgers/hamburguestres.jpg",
        price: 9000,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra pollo", price: 1000),
          Addon(name: "Extra papas a la francesa", price: 800),
          Addon(name: "Extra queso", price: 500),
        ]),

    // meats
    Food(
        name: "New York (380g)",
        description:
            "Corte ligeramente magro proveniente del lomo ancho de la res, se recomienda un término máximo de cocción 3/4 para que no pierda jugosidad",
        imagePath: "lib/images/meats/corteuno.jpg",
        price: 13000,
        category: FoodCategory.meats,
        availableAddons: [
          Addon(name: "Extra de arroz", price: 1000),
          Addon(name: "Extra plátano maduro", price: 800),
          Addon(name: "Extra puré de papa", price: 800),
        ]),

    Food(
        name: "Mignon",
        description:
            "Corte ligeramente magro proveniente del lomo ancho de la res, se recomienda un término máximo de cocción 3/4 para que no pierda jugosidad",
        imagePath: "lib/images/meats/cortedos.jpg",
        price: 10000,
        category: FoodCategory.meats,
        availableAddons: [
          Addon(name: "Extra de arroz", price: 1000),
          Addon(name: "Extra papas salteadas", price: 800),
          Addon(name: "Extra ensalada", price: 1200),
        ]),

    Food(
        name: "Lomito",
        description:
            "Corte ligeramente magro proveniente del lomo ancho de la res, se recomienda un término máximo de cocción 3/4 para que no pierda jugosidad",
        imagePath: "lib/images/meats/cortetres.jpg",
        price: 12000,
        category: FoodCategory.meats,
        availableAddons: [
          Addon(name: "Extra de arroz", price: 1000),
          Addon(name: "Extra papas salteadas", price: 800),
          Addon(name: "Extra ensalada", price: 1200),
        ]),

    Food(
        name: "Filet de pollo",
        description:
            "Corte ligeramente magro proveniente del lomo ancho de la res, se recomienda un término máximo de cocción 3/4 para que no pierda jugosidad",
        imagePath: "lib/images/meats/cortecuatro.jpg",
        price: 13000,
        category: FoodCategory.meats,
        availableAddons: [
          Addon(name: "Extra de arroz", price: 1000),
          Addon(name: "Extra papas salteadas", price: 800),
          Addon(name: "Extra ensalada", price: 1200),
        ]),
    // rices
    Food(
        name: "Arroz con camarónes",
        description:
            "Nuestro delicioso Arroz con Camarones, donde tiernos camarones se mezclan con arroz en una perfecta armonía de sabores,  Salteados con ajo y pimiento rojo.",
        imagePath: "lib/images/rices/Arrozuno.jpg",
        price: 8600,
        category: FoodCategory.rices,
        availableAddons: [
          Addon(name: "Extra de camarónes", price: 1500),
          Addon(name: "Extra papas a la francesa", price: 1000),
          Addon(name: "Extra ensalada", price: 1200),
        ]),

    Food(
        name: "Arroz con lomito",
        description:
            "Nuestro arroz con  lomito es un plato sabroso y reconfortante que combina tiernos trozos de carne con arroz y una variedad de vegetales.",
        imagePath: "lib/images/rices/Arrozdos.jpg",
        price: 8600,
        category: FoodCategory.rices,
        availableAddons: [
          Addon(name: "Extra de lomito", price: 2500),
          Addon(name: "Extra papas a la francesa", price: 1000),
          Addon(name: "Extra ensalada", price: 1200),
        ]),

    Food(
        name: "Arroz con pollo",
        description:
            "Consiste en una mezcla de arroz frito con picadura de verduras, torta de huevo y carnes al gusto, es uno de los platillos más populares de la comida Peruana.",
        imagePath: "lib/images/rices/Arroztres.jpg",
        price: 6500,
        category: FoodCategory.rices,
        availableAddons: [
          Addon(name: "Extra de pollo", price: 1500),
          Addon(name: "Extra papas a la francesa", price: 1000),
          Addon(name: "Extra ensalada", price: 1200),
        ]),
    // desserts
    Food(
        name: "Pie de manzana",
        description: "Pie de manzana italiano",
        imagePath: "lib/images/desserts/postreuno.jpg",
        price: 2500,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra porción de pie", price: 1500),
          Addon(name: "Extra crema batida", price: 1000),
          Addon(name: "Extra cereza", price: 350),
        ]),

    Food(
        name: "Hogaza artesanal",
        description: "Hogaza con almendras",
        imagePath: "lib/images/desserts/postredos.jpg",
        price: 4500,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra de hogaza", price: 3500),
          Addon(name: "Extra de almendras", price: 1000),
          Addon(name: "Extra de frutos secos", price: 550),
        ]),

    // drinks
    Food(
        name: "Coca cola",
        description: "Bebida de cola",
        imagePath: "lib/images/drinks/coca.jpg",
        price: 1500,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra de hielos", price: 250),
          Addon(name: "Vaso Grande", price: 1000),
        ]),

    Food(
        name: "Toronja",
        description: "Bebida de toronja",
        imagePath: "lib/images/drinks/natural.jpg",
        price: 1500,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra de hielos", price: 250),
          Addon(name: "Vaso Grande", price: 1000),
        ]),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = 'Bagaces, Guanacaste, Costa Rica';

  /*

  G E T T E R S
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S
  
  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons is the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if ithem already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  // remove from cart
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

  // get total number of items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

  H E L P E R S
  
  */

  // generate the recipe
  String displayCartRecipe() {
    final receipt = StringBuffer();
    receipt.writeln("Recibo de facturación...");
    receipt.writeln();

    // format the date to include up to seconds only
    String fortmattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(fortmattedDate);
    receipt.writeln();
    receipt.writeln("---------------------------------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Extras: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("---------------------------------------------------");
    receipt.writeln();
    receipt.writeln("Total de productos: ${getTotalItemCount()}");
    receipt.writeln("Total a pagar: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Entregar a: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "₡${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
