import 'package:flutter/material.dart';
import 'package:ui_shop_app/screens/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.pressSeeAll,
  });
  final String title;
  final VoidCallback pressSeeAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 15, color: Colors.black87),
        ),
        TextButton(
            onPressed: pressSeeAll,
            child: const Text(
              'Tümünü Gör',
              style: TextStyle(color: Colors.black26),
            )),
      ],
    );
  }
}
