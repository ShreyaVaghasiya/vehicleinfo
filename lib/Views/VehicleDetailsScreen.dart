import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Controller/VehicleDetailController.dart';
import 'package:get/get.dart';

import '../Model/AppUtils/HomeUtils.dart';
class details_Screen extends StatefulWidget {
  const details_Screen({Key? key}) : super(key: key);

  @override
  State<details_Screen> createState() => _details_ScreenState();
}

class _details_ScreenState extends State<details_Screen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    VehicleDetailController vehicleDetailController = Get.put(VehicleDetailController());
    vehicleDetailController.getUserResponse();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            HomeUtils.vehicleNoController.clear();
            Get.back();
          },
            child: Icon(CupertinoIcons.back,color: CupertinoColors.white,size: 25,)),
        backgroundColor: Color(0xff191970),
        elevation: 0,
        title: Text(
          "Your Vehicle",
          style: GoogleFonts.lato(
              fontSize: 18,
              letterSpacing: 1,
              color: CupertinoColors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
