import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_shop_app/screens/constants.dart';
import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular.dart';
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Text(
              " GENÇER GİYİM",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  shadows: [const Shadow(blurRadius: 10.10)],
                  letterSpacing: 4.0,
                  color: Colors.black,
                  fontSize: 30),
            ),
          ),
          Text(
            "En İyi Giyim Senin İçin",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
          const Categories(),
          const SizedBox(height: defaultPadding),
          const NewArrival(),
          const SizedBox(height: defaultPadding),
          const Popular(),
        ]),
      ),
    );
  }
}
