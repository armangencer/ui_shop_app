import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_shop_app/details/details_screen.dart';
import 'package:ui_shop_app/screens/components/product_card.dart';
import 'package:ui_shop_app/screens/components/section_title.dart';

import '../../models/product.dart';
import '../constants.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(pressSeeAll: () {}, title: 'Popüler'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                    right: defaultPadding, left: defaultPadding),
                child: ProductCard(
                  bgColor: demo_product[index].bgColor,
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: demo_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
