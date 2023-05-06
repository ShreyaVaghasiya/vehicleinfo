import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Controller/HomeController.dart';
import 'package:vehicleinfo/Model/AppUtils/CarouselUtils.dart';
import 'package:vehicleinfo/Model/AppUtils/HomeUtils.dart';
import 'package:vehicleinfo/Model/AppUtils/SignUpUtil.dart';
import 'package:vehicleinfo/Model/AppUtils/SizeUtil.dart';
import 'package:get/get.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeController homeController = Get.put(HomeController());
  @override
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeUtils.h / 12),
        child: AppBar(
          title: Column(
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
          backgroundColor: Color(0xff191970),
          leading: const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: CupertinoColors.white,
              child: Icon(
                CupertinoIcons.person,
                color: Color(0xff191970),
                size: 18,
              ),
            ),
          ),
          actions: const [
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
            SizedBox(
              width: 10,
            )
          ],
          elevation: 0,
        ),
      ),
      body: Form(
        key: HomeUtils.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
                carouselController: CarouselUtils.MyCarouselContoller,
                items: CarouselUtils.CarouselList.map((e) {
                  return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12, width: 1),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 2),
                              color: Colors.black12,
                            )
                          ]),
                      width: SizeUtils.w / 1.3,
                      child: Center(
                        child: Text('${e['i']}'),
                      ));
                }).toList(),
                options: CarouselOptions(
                  height: SizeUtils.h / 5,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlay: true,
                  scrollPhysics: const BouncingScrollPhysics(),
                )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Get Vahicle Details by its Number",style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff191970),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1
                ),),
              ),
            SizedBox(height: 10,),
            Container(
              height: SizeUtils.h/3.5,
              width: SizeUtils.w,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12, width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(1, 2),
                      color: Colors.black12,
                    )
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Enter Your Vehicle No",style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Color(0xff191970),
                    fontWeight: FontWeight.w600
                  ),),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 20.0, left: 40, right: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 2.5, color: Color(0xff191979)),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black54),
                        ),
                        hintText: "Vehicle No",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        icon:  Icon(
                         Icons.directions_bike_outlined,
                          size: 25,
                          color: Colors.black26,
                        ),
                      ),
                      style: GoogleFonts.lato(
                                                                                                                                                                                                                                     t6666666666666666666
                          6

                          666666666666666666666fontSize: 14,
                          letterSpacing: 1,
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.w400
                      ),
                      controller: HomeUtils.vehicleNoController,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter Vehicle Number';
                        }
                        if (HomeUtils.validateStructure(val) == false) {
                          return 'Enter Valid Number';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                 SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      homeController.vehicleNoValidation();
                    },
                    child: Container(
                      height: SizeUtils.h/18,
                      width: SizeUtils.w,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xff191970),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Submit",style: GoogleFonts.lato(
                          color: CupertinoColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
