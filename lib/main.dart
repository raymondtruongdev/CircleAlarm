import 'package:circle_alarm/components/circle_mijo_library.dart';
import 'package:circle_alarm/controllers/alarm_controller.dart';
import 'package:circle_alarm/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

final AlarmController arlamController =
    Get.put(AlarmController(), permanent: true);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Size of device
    double widthScreenDevice = MediaQuery.of(context).size.width;
    double heightScreenDevice = MediaQuery.of(context).size.height;
    arlamController.setDeviceParams(widthScreenDevice, heightScreenDevice);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lighMode,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyPage {}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CirclePage(
          isCircleDevice: arlamController.isCircleDevice,
          diameter: arlamController.watchSize,
          color: Colors.red,
          child: const Center(
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.amber),
            ),
          )),
    );
  }
}
