import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final int price;
  late Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.bgColor});
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Sleeve Shirts",
    price: 165,
    bgColor: const Color.fromARGB(255, 247, 185, 144),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual  Shirts",
    price: 99,
    bgColor: const Color.fromARGB(255, 247, 185, 144),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: " Hem Shirts",
    price: 180,
    bgColor: const Color.fromARGB(255, 247, 185, 144),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color.fromARGB(255, 247, 185, 144),
  ),
];
