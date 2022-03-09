import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netzary_task/Screens/scrollingimages.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class banner extends StatefulWidget {
  @override
  State<banner> createState() => _bannerState();
}

class _bannerState extends State<banner> {
  final controller = CarouselController();

  int activeIndex = 0;

  final List<String> AssetImages = [
    "Images/commercial.jpg",
    "Images/app1.jpg",
    "Images/app2.jpg",
    "Images/app3.jpg",
    "Images/commercial.jpg",
  ];

  get animateToSlide => null;

  @override
  Widget build(BuildContext context) => Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CarouselSlider.builder(
                carouselController: controller,
                itemCount: AssetImages.length,
                itemBuilder: (context, index, realIndex) {
                  final AssetImage = AssetImages[index];

                  return ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: buildImage(AssetImage, index));
                },
                options: CarouselOptions(
                  height: 160,
                  viewportFraction: 0.9,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ))),
        SizedBox(
          height: 10,
        ),
        buildIndicator(),
        SizedBox(
          height: 30,
        ),
        scrollingimages(),
      ]);

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: AssetImages.length,
        effect: ScrollingDotsEffect(
          dotWidth: 8,
          dotHeight: 9,
          radius: 0,
          activeDotScale: 1.5,
          spacing: 10,
          fixedCenter: true,
          activeDotColor: Colors.orange,
          dotColor: Colors.orange,
        ),
        onDotClicked: animateToSlide,
      );
}

Widget buildImage(String AssetImage, int index) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Image.asset(
        AssetImage,
      ),
    );
