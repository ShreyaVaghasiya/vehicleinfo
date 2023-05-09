import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Controller/VehicleDetailController.dart';
import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/SizeUtil.dart';

import '../Model/AppUtils/HomeUtils.dart';

class details_Screen extends StatefulWidget {
  details_Screen({Key? key}) : super(key: key);

  @override
  State<details_Screen> createState() => _details_ScreenState();
}

class _details_ScreenState extends State<details_Screen> {
  VehicleDetailController vehicleDetailController =
      Get.put(VehicleDetailController());

  @override
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              HomeUtils.vehicleNoController.clear();
              Get.back();
            },
            child: Icon(
              CupertinoIcons.back,
              color: CupertinoColors.white,
              size: 25,
            )),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeUtils.h / 8,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.directions_bike_outlined,
                        size: 60,
                        color: Color(0xff191970),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Owner Name",
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                                color: Color(0xff191970)),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "${vehicleDetailController.res['result']['owner_name']}   ${vehicleDetailController.res['result']['father_name']} ",
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.green.shade900,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Serial No . ${vehicleDetailController.res['result']['owner_serial_number']}",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.green.shade900,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: SizeUtils.h / 8,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "   Current Address",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,

                        color: Color(0xff191970)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Text(
                      "${vehicleDetailController.res['result']['current_address']}",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff191970)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeUtils.h / 8,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "   Permenant Address",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,

                        color: Color(0xff191970)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Text(
                      "${vehicleDetailController.res['result']['permanent_address']}",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff191970)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeUtils.h / 8,
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
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "   Appreance",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w900, color: Color(0xff191970)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Text(
                      "This is ${vehicleDetailController.res['result']['colour']} & ${vehicleDetailController.res['result']['vehicle_class']} Vehicle.It is ${vehicleDetailController.res['result']['body_type']} type ${vehicleDetailController.res['result']['fuel_type']}  Vehicle.Its Seating Capacity is ${vehicleDetailController.res['result']['seating_capacity']}.Weightage of Vehicle is ${vehicleDetailController.res['result']['unladden_weight']}.",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff191970)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeUtils.h / 2.8,
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
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [

                      Text(
                        "   Important Dates",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff191970)),
                      ),SizedBox(
                        width: 110,
                      ),

                      Text(
                        "Reg.Date : ${vehicleDetailController.res['result']['registration_date']}",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade900),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Permit Validation from ${vehicleDetailController.res['result']['permit_validity_from']} to ${vehicleDetailController.res['result']['permit_validity_upto']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                        Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Status Verify Date : ${vehicleDetailController.res['result']['status_verfy_date']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                        Divider(color: Colors.black54,height: 40,thickness: 1,),                        Text(
                          "Chassis Number : ${vehicleDetailController.res['result']['chassis_number']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ), Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Engine Number : ${vehicleDetailController.res['result']['engine_number']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ), Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Cylinder : ${vehicleDetailController.res['result']['number_of_cylinder']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeUtils.h / 2.6,
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
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [

                      Text(
                        "   Manufacturing Details",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff191970)),
                      ),SizedBox(width: 110,),

                      Text(
                        "Date : ${vehicleDetailController.res['result']['m_y_manufacturing']}",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade900),
                      ),

                    ],
                  ),
                SizedBox(height: 20,),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Manufacturer : ${vehicleDetailController.res['result']['manufacturer']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                        Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Manufacturer Model : ${vehicleDetailController.res['result']['manufacturer_model']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                        Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Chassis Number : ${vehicleDetailController.res['result']['chassis_number']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Engine Number : ${vehicleDetailController.res['result']['engine_number']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),Divider(color: Colors.black54,height: 40,thickness: 1,),
                        Text(
                          "Cylinder : ${vehicleDetailController.res['result']['number_of_cylinder']}",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970)),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
