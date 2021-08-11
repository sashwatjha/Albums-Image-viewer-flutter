import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> slist = [
    'assets/1.webp',
    'assets/2.webp',
    'assets/3.webp',
    'assets/4.webp',
    'assets/5.webp',
    'assets/6.webp',
    'assets/7.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0.h,
      ),
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 76.h,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: slist.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(i)),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 0.h),
            child: Text(
              "\"Painting is dancing with chaos.\"\n-Melanie Circle",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
