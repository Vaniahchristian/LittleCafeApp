import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;

  FoodDetailsSlider({
    Key? key,
    required this.slideImage1,
    required this.slideImage2,
    required this.slideImage3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Image.asset(
            slideImage1,
            fit: BoxFit.cover,
          ),
          Image.asset(
            slideImage2,
            fit: BoxFit.cover,
          ),
          Image.asset(
            slideImage3,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
