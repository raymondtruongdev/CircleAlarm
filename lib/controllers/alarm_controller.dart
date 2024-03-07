import 'package:get/state_manager.dart';

class AlarmController extends GetxController {
// ==================== Variables ==============================================
  late double watchSize = 1080.0;
  double widthScreenDevice = 0.0;
  double heightScreenDevice = 0.0;
  bool isCircleDevice = false;
// ==================== Getters ================================================

// ==================== Setters ================================================

// ==================== Uitlilty Functions =====================================

  void setDeviceParams(double widthScreen, double heightScreen) {
    if (widthScreen < heightScreen) {
      widthScreenDevice = widthScreen;
      heightScreenDevice = heightScreen;
    } else {
      widthScreenDevice = heightScreen;
      heightScreenDevice = widthScreen;
    }
    watchSize = widthScreenDevice;

    if (heightScreenDevice <= widthScreenDevice * 1.1) {
      // heigth < 110% of width => circle face
      isCircleDevice = true;
    } else {
      isCircleDevice = false;
    }
  }
}
