import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netzary_task/Screens/banner.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    int activeIndex = 0;
    final List<String> AssetImages = [
      "Images/app2.jpg",
      "Images/app3.jpg",
      "Images/commercial.jpg",
      "Images/app1.jpg"
    ];

    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: AssetImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final AssetImage = AssetImages[index];
                    return buildImage(AssetImage, index);
                  },
                  options: CarouselOptions(
                      height: 250,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pageSnapping: true,
                      viewportFraction: 3,
                      aspectRatio: 12 / 7)),
              Positioned(
                left: 10,
                top: 40,
                right: 10,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "1st Main Road",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "  Locality , Commercial , Flat ",
                            ),
                            FittedBox(
                              child: Container(
                                  height: 40,
                                  width: 160,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30)),
                                      color: Colors.orange),
                                  child: Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ])),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 160,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange,
                          ),
                          child: Text(
                            "FIND PROPERTY",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 160,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange,
                          ),
                          child: Text(
                            "POST A PROPERTY",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
                ]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          banner()
        ]),
      ),
    );
  }

  Widget buildImage(String AssetImage, int index) => Container(
        color: Colors.white,
        child: Image.asset(
          AssetImage,
        ),
      );
}
