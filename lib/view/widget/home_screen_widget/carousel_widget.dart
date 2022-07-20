import 'package:banner_carousel/banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BannerCarousel.fullScreen(
      banners: BannerImages.listBanners,
      activeColor: mainColor,
      disableColor: gray1,
      animation: true,
      onTap: (id) => print(id),
    );

    /// Banner Customized Without Indicator
  }
}

class BannerImages {
  static const String banner1 = "assets/images/carusel1.jpg";
  static const String banner2 =
      "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}

final List<String> imgList = [
  "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg",
  "https://wallpaperaccess.com/full/19921.jpg",
  "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400",
];

class Carousel1 extends StatelessWidget {
  const Carousel1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: imgList
              .map((item) => Container(
                    padding: const EdgeInsets.all(0),
                    child: Center(
                        child: Image(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    )),
                  ))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: false,
            aspectRatio: 2.0,
          )),
    );

    /// Banner Customized Without Indicator
  }
}
