import 'package:flutter/material.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  });

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 165,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius))),
                child: Image.asset(
                  image,
                  height: 130,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding / 4),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
