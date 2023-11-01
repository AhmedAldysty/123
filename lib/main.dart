import 'package:boycott/Screens/HomeScreen%20/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Shared/Components/sized_config.dart';
import 'Shared/Costant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          title: 'قاطع',
          theme: ThemeData(primarySwatch: kPrimaryColorLightSwatch),
          home: const HomeScreen(),
          onInit: () async {
            screenHeight = Get.height;
            screenWidth = Get.width;
          },
        );
      },
    );
  }
}
