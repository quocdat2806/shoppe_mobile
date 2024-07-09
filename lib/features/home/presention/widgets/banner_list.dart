import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/features/home/presention/widgets/banner_item.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        padEnds: true,
        animateToClosest: true,
        viewportFraction: 1,
        aspectRatio: 3.25 / 1.5,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        pageSnapping: true,
        autoPlayCurve: Curves.easeInOutCubic,
      ),
      items: [1, 2, 3, 4, 5].map(
            (i) {
          return Builder(
            builder: (BuildContext context) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BannerItem(),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
