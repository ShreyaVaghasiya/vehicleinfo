import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/vehicleDetailUtils.dart';
import 'package:http/http.dart' as http;
class VehicleDetailController extends GetxController{
  var res;
  getUserResponse()async{
    var url = Uri.parse('${VehicleDetailsUtils.BASE_URL}');
    var response = await http.post(url,headers: {
      'X-RapidAPI-Key': '80a8c0b1c5msh2b615542036fee0p19a7c7jsne64c25cc2668',
      'X-RapidAPI-Host': 'vehicle-rc-information.p.rapidapi.com'
    },
      body:
        {
          'VehicleNumber': VehicleDetailsUtils.VehicleNumber
        }

    );
    try{
      if(response.statusCode == 200){
         res = json.decode(response.body);
        print(res['result']['current_address']);
      }
      else{
        print('No Data Found!');
      }
      update();
      return res;
    }
    catch(e){
      log(e.toString());
      throw e;
    }

  }
}