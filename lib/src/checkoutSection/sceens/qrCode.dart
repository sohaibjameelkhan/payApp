import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_app/src/checkoutSection/sceens/qr_payment_recieved.dart';
import 'package:pay_app/src/dashboardSection/providers/dashboardProvder.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../commonWidgets/textfield_widget.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<DashBoardProvider>(
          builder: (context, dashBoardProvider, __) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.appcolor,
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: dashBoardProvider.bannerImage == null
                        ? const AssetImage(Res.bannerImage)
                        : FileImage(dashBoardProvider.bannerImage!)
                            as ImageProvider)),
            child: Column(
              children: [
                const SizedBox(
                  height: 140,
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    // fit: StackFit.loose,

                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(33),
                              topRight: Radius.circular(33)),
                          color: AppColors.whitecolor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  TextUtils.merchantName,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.9)),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "\$3,345,90.0",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blackcolor),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)),
                                elevation: 8,
                                color: AppColors.whitecolor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: QrImage(
                                    data:
                                        'This QR code has an embedded image as well',
                                    version: QrVersions.auto,
                                    size: 160,
                                    gapless: false,
                                    embeddedImage:
                                        const AssetImage(Res.qrembedimage),
                                    embeddedImageStyle: QrEmbeddedImageStyle(
                                      size: const Size(50, 50),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Scan to pay with",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darktextcolor
                                              .withOpacity(0.8)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "PayApp",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.appcolor),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CommonButtonWidget(
                                  //  buttonwidth: 100,
                                  horizontalPadding: 7,
                                  radius: 27,
                                  buttonHeight: 50,
                                  backgroundcolor: AppColors.appcolor,
                                  bordercolor: AppColors.appcolor,
                                  textcolor: AppColors.whitecolor,
                                  text: TextUtils.continuebutton,
                                  onTap: () {
                                    toNext(
                                        context: context,
                                        widget: const QrPaymentRecieved());
                                  }),
                              const SizedBox(
                                height: 12,
                              ),
                              CommonButtonWidget(
                                  //  buttonwidth: 100,
                                  horizontalPadding: 7,
                                  radius: 27,
                                  buttonHeight: 50,
                                  backgroundcolor: AppColors.appcolor,
                                  bordercolor: AppColors.appcolor,
                                  textcolor: AppColors.whitecolor,
                                  text: TextUtils.cancel,
                                  onTap: () {
                                    Navigator.maybePop(context);
                                    // toNext(context: context, widget: const WeFoundItScreen());
                                  }),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 150,
                          top: -50,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteskincolor,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: dashBoardProvider.profileImage ==
                                                null
                                            ? const AssetImage(Res.personImage)
                                            : FileImage(dashBoardProvider
                                                    .profileImage!)
                                                as ImageProvider),
                                    borderRadius: BorderRadius.circular(54),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
