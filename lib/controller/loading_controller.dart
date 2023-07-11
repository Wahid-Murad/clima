import 'dart:html';

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class LoadingController extends GetxController {
  // void getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  //   print(position);
  // }
  RxDouble latitude = 0.0.obs;
  RxDouble longitude = 0.0.obs;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude.value = position.latitude;
      longitude.value = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  getLocation() {
    //Location location=Location();
  }
}
