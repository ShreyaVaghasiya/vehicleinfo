import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/HomeUtils.dart';
import 'package:vehicleinfo/Views/VehicleDetailsScreen.dart';

class HomeController extends GetxController{
  vehicleNoValidation() {
    if (HomeUtils.formKey.currentState!.validate()) {
      Get.to(details_Screen());
    } else {}
    update();
  }
}