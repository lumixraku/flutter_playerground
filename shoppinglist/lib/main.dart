import 'package:flutter/material.dart';
import 'package:shippinglist/products.dart';
import 'package:shippinglist/shoppinglist.dart';



void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}




