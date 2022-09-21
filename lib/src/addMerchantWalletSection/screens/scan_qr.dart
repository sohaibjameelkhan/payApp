import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/helperFucntions/navigator_helper.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';
import 'another_method.dart';

class ScanQRScreen extends StatefulWidget {
  const ScanQRScreen({Key? key}) : super(key: key);

  @override
  State<ScanQRScreen> createState() => _ScanQRScreenState();
}

class _ScanQRScreenState extends State<ScanQRScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  String qrCode = 'Unknown';

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  // Barcode? result;
  //QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 30,
                radius: 27,
                text: TextUtils.anotherMethod,
                onTap: () {
                  toNext(context: context, widget: const AnotherMethodScreen());
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        backgroundColor: AppColors.whitecolor,
        body: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  Res.arrowback,
                ),
                Text(
                  TextUtils.scanWalletQr,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackcolor),
                ),
                const Text("     "),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              TextUtils.scantheQrcodeofyour,
              style: fontW4S12(context)!.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darktextcolor),
            ),
            Text(
              TextUtils.existingwallet,
              style: fontW4S12(context)!.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darktextcolor),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,

              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage(Res.qrscannerimage))),
              child: QRView(
                cameraFacing: CameraFacing.back,
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  // Future<void> scanQRCode() async {
  //   try {
  //     final qrCode = await FlutterBarcodeScanner.scanBarcode(
  //       '#ff6666',
  //       'Cancel',
  //       true,
  //       ScanMode.QR,
  //     ).whenComplete(
  //         () => toNext(context: context, widget: const WeFoundItScreen()));

  //     if (!mounted) return;

  //     setState(() {
  //       this.qrCode = qrCode;
  //     });
  //   } on PlatformException {
  //     qrCode = 'Failed to get platform version.';
  //   }
  // }
}
