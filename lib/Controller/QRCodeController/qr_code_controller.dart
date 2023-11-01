import 'package:boycott/Shared/Costant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../Screens/AcceptOrRecjectScreen/accept_or_reject_screen.dart';

class QRCodeController extends GetxController {
  Barcode? result;
  QRViewController? controller;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // CheckQrCodeCollectData checkQrCodeCollectData = CheckQrCodeCollectData();
  bool isloading = false;
  String status = '';
  void onQRViewCreated(QRViewController controller) {
    // HomeController homeController = Get.put(HomeController());
    this.controller = controller;
    update();
    isloading = true;
    update();
    controller.scannedDataStream.listen((scanData) {
      controller.resumeCamera();

      result = scanData;
      update();
      controller.stopCamera();

      // GlobalVariablesHelp.logger.i(result!.code, 'Qr CODE');
      if (result!.code!.isNotEmpty) {
        Get.back();

        logger.e(result!.code.toString());

        int starting = int.parse(result!.code!.substring(0, 3));
        logger.e(starting.toString());
        if (starting <= 459) {
          logger.e('Noooo');
          Get.to(
            const AcceptOrRejectScreen(
              isAccept: false,
            ),
            transition: Transition.fadeIn,
          );
        } else if (490 <= starting && starting <= 509) {
          logger.e('Noooo');
          Get.to(
            const AcceptOrRejectScreen(
              isAccept: false,
            ),
            transition: Transition.fadeIn,
          );
        } else if (starting == 729) {
          logger.e('Nooo');
          Get.to(
            const AcceptOrRejectScreen(
              isAccept: false,
            ),
            transition: Transition.fadeIn,
          );
        } else {
          logger.e('Yesss');
          Get.to(
            const AcceptOrRejectScreen(
              isAccept: true,
            ),
            transition: Transition.fadeIn,
          );
        }
        isloading = false;
        update();
      }
      update();
    });
  }

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    // Logger().i('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
