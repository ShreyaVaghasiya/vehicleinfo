import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/vehicleDetailUtils.dart';
import 'package:http/http.dart' as http;
class VehicleDetailController extends GetxController{
  var res;
   getUserResponse()async{
    var url = Uri.parse(VehicleDetailsUtils.BASE_URL);
    var response = await http.post(url,headers: {
      'X-RapidAPI-Key': '4cdc58a017msh638dca0b4a16878p1e7279jsn1d12d783ebd1',
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
         update();
         print(res['result']);
        print(res['result']['current_address']);
      }
      else{
        print('No Data Found!');
      }
      update();
      return res['result'];
    }
    catch(e){
      log(e.toString());
      throw e;
    }

  }
}