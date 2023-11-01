import 'package:boycott/Controller/QRCodeController/qr_code_controller.dart';
import 'package:boycott/Shared/Components/text_style.dart';
import 'package:boycott/Shared/Costant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../Shared/Components/sized_config.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: GetBuilder<QRCodeController>(
        init: QRCodeController(),
        builder: (_) {
          return Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              QRView(
                key: _.qrKey,
                onQRViewCreated: _.onQRViewCreated,
                overlay: QrScannerOverlayShape(
                    borderColor: redColor,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    overlayColor: Colors.black.withOpacity(0.8),
                    cutOutHeight: getHeight(200),
                    cutOutWidth: getWidth(300)),
                onPermissionSet: (ctrl, p) =>
                    _.onPermissionSet(context, ctrl, p),
              ),
              if (_.isloading)
                Positioned(
                  bottom: getHeight(140),
                  child: SizedBox(
                    height: getHeight(4),
                    width: getWidth(300),
                    child: const LinearProgressIndicator(
                      color: redColor,
                      backgroundColor: whiteColor,
                    ),
                  ),
                ),
              if (_.isloading)
                Positioned(
                  bottom: getHeight(90),
                  child: Center(
                    child: SizedBox(
                      // height: getHeight(10),
                      width: getWidth(300),
                      child: Text(
                        'Scanning...',
                        style: textStyle(
                          color: whiteColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              PositionedDirectional(
                top: getHeight(65),
                start: getWidth(20),
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    height: getHeight(40),
                    width: getWidth(40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: blackColor.withOpacity(0.4),
                            blurRadius: 6,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        color: whiteColor.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 22.sp,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
