import 'dart:ui';

import 'package:boycott/Shared/Components/sized_config.dart';
import 'package:boycott/Shared/Components/text_style.dart';
import 'package:boycott/Shared/Costant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Shared/Components/custom_container_button.dart';
import '../QrCodeScreen /qr_code_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage(
                'assets/images/1df15a43-bfa3-4571-90f1-0ef147859c47.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  blackColor.withOpacity(0.6), BlendMode.darken)),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(20),
            ),
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.02)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getHeight(200),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    'assets/images/barcode-scanner.png',
                    height: getHeight(160),
                    width: getWidth(160),
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: getHeight(95),
                ),
                Text.rich(
                  TextSpan(
                      text: 'Scanning '.toUpperCase(),
                      style: textStyle(
                        color: whiteColor.withOpacity(0.8),
                        weight: FontWeight.bold,
                        size: 26,
                      ),
                      children: [
                        TextSpan(
                            text: 'Now'.toUpperCase(),
                            style: textStyle(
                              color: redColor,
                              weight: FontWeight.bold,
                              size: 26,
                            )),
                        // TextSpan(
                        //     text: 'code',
                        //     style: textStyle(
                        //       color: whiteColor.withOpacity(0.8),
                        //       weight: FontWeight.bold,
                        //       size: 26,
                        //     )),
                      ]),
                ),
                SizedBox(
                  height: getHeight(30),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                  child: Text(
                    'Scan the barcode to reveal product details and find out whether this product is within the governorate or not.',
                    style: textStyle(
                        color: Colors.white.withOpacity(0.7),
                        size: 15,
                        height: 1.1,
                        weight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                customContainerButton(
                    text: 'Get Started',
                    ontapped: () {
                      Get.to(const QrCodeScreen(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 600));
                    }),
                SizedBox(
                  height: getHeight(50),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
