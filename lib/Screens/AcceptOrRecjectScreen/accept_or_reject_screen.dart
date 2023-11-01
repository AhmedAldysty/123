import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Shared/Components/custom_container_button.dart';
import '../../Shared/Components/sized_config.dart';
import '../../Shared/Components/text_style.dart';
import '../../Shared/Costant/colors.dart';

class AcceptOrRejectScreen extends StatefulWidget {
  final bool isAccept;
  const AcceptOrRejectScreen({super.key, required this.isAccept});

  @override
  State<AcceptOrRejectScreen> createState() => _AcceptOrRejectScreenState();
}

class _AcceptOrRejectScreenState extends State<AcceptOrRejectScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 60), () => Get.back());
    super.initState();
  }

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
                Image.asset(
                  widget.isAccept
                      ? 'assets/images/agree.png'
                      : 'assets/images/disagree.png',
                  height: getHeight(160),
                  width: getWidth(160),
                  // color: Colors.white.withOpacity(0.7),
                ),
                SizedBox(
                  height: getHeight(95),
                ),
                Text.rich(
                  TextSpan(
                    text: widget.isAccept
                        ? 'Succeeful!'.toUpperCase()
                        : 'isralian'.toUpperCase(),
                    style: textStyle(
                      color: widget.isAccept ? greenColor : redColor,
                      weight: FontWeight.w900,
                      size: 26,
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(30),
                ),
                if (!widget.isAccept)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                    child: Text(
                      'Scan another supported product',
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
                    text: 'Scan Again',
                    ontapped: () {
                      Get.back();
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
