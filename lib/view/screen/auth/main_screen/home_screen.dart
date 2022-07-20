import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/view/widget/home_screen_widget/card_items_widget.dart';
import 'package:smile/view/widget/home_screen_widget/carousel_widget.dart';
import 'package:smile/view/widget/home_screen_widget/location.dart';
import 'package:smile/view/widget/home_screen_widget/search.dart';

import '../../../widget/home_screen_widget/listview_horizontal.dart';

class HomeScreen extends StatelessWidget {
  // final ProductsModel productsModel;
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        title: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 20.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.asset(
              'assets/images/logo2.png',
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox.fromSize(
            size: const Size(50, 50),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  // splashColor: Colors.green,
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: mainColor,
                  ), // <-- Icon
                  // <-- Text
                ),
              ),
            ),
          ),
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            animationDuration: const Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: const Text(
              '0',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                  color: mainColor,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),

                  ///Select a Location
                  child: const LocationWidget()),
              const SizedBox(
                height: 10,
              ),

              ///Search
              const SearchWidget(),

              /// horizental list view
              const ListViewHorizontal(),
              //...
              /// Carousel Customized
              const Carousel1(
                  // imageUrl: productsModel.image,
                  ),
              const SizedBox(
                height: 20,
              ),

              CardItems()
            ],
          ),
        ),
      ),
    );
  }
}
