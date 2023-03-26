import 'package:flutter/material.dart';

import '../../screens/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isActive,
    required this.press,
  });

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(
          defaultPadding / 2,
        ),
        decoration: BoxDecoration(
            border:
                Border.all(color: isActive ? primaryColor : Colors.transparent),
            shape: BoxShape.circle),
        child: CircleAvatar(radius: 10, backgroundColor: color),
      ),
    );
  }
}
