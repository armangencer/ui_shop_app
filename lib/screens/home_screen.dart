import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_shop_app/models/category.dart';
import 'package:ui_shop_app/screens/constants.dart';

import 'components/categories.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            "15-2 Turkey",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: Text(
            "Finder",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 30),
          ),
        ),
        Text(
          "En iyi Dış Giyim Senin İçin",
          style:
              Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 18),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: SearchForm(),
        ),
        const Categories()
      ]),
    );
  }
}
