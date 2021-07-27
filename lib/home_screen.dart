import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';

class HomeScreen extends StatelessWidget {


  late UserProvider userProvider;

  final List<String> imgList = [
    'assets/slide1.jpg'
        'assets/slide2.jpg'
        'assets/slide3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        side: BorderSide(color: Colors.black),
                      ),
                      shadows: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 80),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        side: BorderSide(color: Colors.black),
                      ),
                      shadows: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.2,
                          offset: Offset(5.0, 5.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        side: BorderSide(color: Colors.black),
                      ),
                      shadows: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.2,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Offers",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image(
                    image: AssetImage(
                      "assets/slide1.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image(
                    image: AssetImage(
                      "assets/slide2.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image(
                    image: AssetImage(
                      "assets/slide3.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                )
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 400),
                viewportFraction: 0.8,
              ),
            ),
                Center(
                  //child: Text(userProvider.GetPhoneNumber()),
                ),

          ]),
        ),
      ),
    );
  }
}
