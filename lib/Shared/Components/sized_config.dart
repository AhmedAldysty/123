import 'package:get/get.dart';

double screenHeight = Get.height;
double screenWidth = Get.width;
double revesrsedHeightNumber = 812;
double revesrsedWidthNumber = 375;

double getWidth(double width) {
  return (width / revesrsedWidthNumber) * screenWidth;
}

double getHeight(double height) {
  return (height / revesrsedHeightNumber) * screenHeight;
}
