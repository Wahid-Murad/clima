import 'package:clima/controller/loading_controller.dart';
import 'package:get/get.dart';

class AllControllerBinder implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoadingController>(() => LoadingController());
  }
}
