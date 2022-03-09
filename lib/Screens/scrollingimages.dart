import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrollingimages extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          TitleWithSeeAll(
            text: "Top Picks",
          ),
          RecommendHouse(),
          TitleWithSeeAll(text: "Latest"),
          RecommendHouse(),
        ],
      );
}

class RecommendHouse extends StatelessWidget {
  const RecommendHouse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: <Widget>[
        RecommendHouseCard(
            image: "Images/plot1.jpg",
            title: "1 kanal corner plot on sale",
            price: 220,
            press: () {}),
        RecommendHouseCard(
            image: "Images/plot2.jpg",
            title: "Low budget land for sale",
            price: 260,
            press: () {}),
        RecommendHouseCard(
            image: "Images/plot3.jpg",
            title: "House for sale at Hyderpora",
            price: 145,
            press: () {}),
        RecommendHouseCard(
            image: "Images/plot4.jpg",
            title: "Three storied house at Chanapora",
            price: 395,
            press: () {})
      ]),
    );
  }
}

class RecommendHouseCard extends StatelessWidget {
  const RecommendHouseCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20 / 2,
        bottom: 20,
      ),
      width: size.width * 0.6,
      child: Column(
        children: <Widget>[
          Stack(children: [
            Image.asset(image),
            Positioned(
                left: 10,
                top: 40,
                child: Row(children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Text(
                    "MILKIYAT.IN",
                    style: TextStyle(color: Colors.white),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 20,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white)),
                    child: Text(
                      "verified",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ])),
            Positioned(
                left: 130,
                bottom: 10,
                child: Container(
                  height: 20,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: Text("For Sale",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ))
          ]),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(20 / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(),
                  ]),
              child: Column(children: <Widget>[
                Row(
                  children: [
                    Text(
                      "₹1.40 Crore",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "1 Kanal corner plot on sale",
                    )),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.2)),
                      child: Text(
                        "0 meters",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      child: Text(
                        "no",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      child: Text(
                        "20 Malras",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                    ),
                    Text(
                      "Nowgam",
                    )
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithSeeAll extends StatelessWidget {
  const TitleWithSeeAll({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Top Picks ", style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text(
                "SEE ALL",
                style: TextStyle(color: Colors.orange),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.orange,
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
