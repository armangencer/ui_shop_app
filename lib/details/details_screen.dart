import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_shop_app/screens/constants.dart';

import '../models/product.dart';
import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding,
                  defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultBorderRadius * 2),
                      topRight: Radius.circular(defaultBorderRadius * 2))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text('Sleeve Shirt İs The Best'),
                    ),
                    const Text(
                      'Colors',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: const Color.fromARGB(255, 56, 120, 231),
                          press: () {},
                          isActive: false,
                        ),
                        ColorDot(
                          color: const Color.fromARGB(255, 72, 76, 209),
                          press: () {},
                          isActive: true,
                        ),
                        ColorDot(
                          color: const Color.fromARGB(255, 175, 155, 97),
                          press: () {},
                          isActive: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 5),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: const StadiumBorder()),
                          child: const Text('Sepete Ekle'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
