import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Model/AppUtils/SignUpUtil.dart';
import 'package:vehicleinfo/Model/AppUtils/SizeUtil.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: SizeUtils.h / 5,
                width: SizeUtils.w,
                color: Color(0xff191970),
              ),
              Positioned(
                top: SizeUtils.h / 14,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const CircleAvatar(
                      backgroundColor: CupertinoColors.white,
                      radius: 18,
                      child: Icon(
                        CupertinoIcons.person,
                        color: Color(0xff191970),
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi , ${SignUpUtil.nameController.text}",
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              letterSpacing: 1,
                              color: CupertinoColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Surat",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Colors.white54,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: SizeUtils.h / 14,
                left: SizeUtils.w / 1.3,
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: CupertinoColors.white,
                      radius: 15,
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Color(0xff191970),
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: CupertinoColors.white,
                      radius: 15,
                      child: Icon(
                        CupertinoIcons.settings_solid,
                        color: Color(0xff191970),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: SizeUtils.h / 14,
                left: SizeUtils.w / 2,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: SizeUtils.h / 10,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: const BoxDecoration(
                                color: CupertinoColors.white),
                            child: Text(
                              'text $i',
                              style: const TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
