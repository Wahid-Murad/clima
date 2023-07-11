import 'package:clima/controller/loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatelessWidget {
  LoadingScreen({super.key});
  final LoadingController loadingController = Get.find<LoadingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            loadingController.getCurrentLocation();
          },
          child: Text('Your Location'),
        ),
      ),
    );
  }
}
