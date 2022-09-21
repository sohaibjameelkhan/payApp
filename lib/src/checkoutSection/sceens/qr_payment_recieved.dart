import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/dashboardSection/providers/dashboardProvder.dart';
import 'package:provider/provider.dart';
import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class QrPaymentRecieved extends StatelessWidget {
  const QrPaymentRecieved({Key? key}) : super(key: key);

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
                  height: 120,
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
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                Res.walletadded,
                                height: 70,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Payment Recieved",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
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
                                height: 25,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Transaction Hash",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.6)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "0x51dbf3168abf5e275a662af5c4...897d",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackcolor
                                              .withOpacity(0.8)),
                                    ),
                                  ),
                                  SvgPicture.asset(Res.copy)
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Divider(
                                  color: AppColors.darktextcolor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "TimeStamp",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.6)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Aug 23, 2022.  9:55 PM",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackcolor
                                              .withOpacity(0.8)),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Divider(
                                  color: AppColors.darktextcolor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "From",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.6)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "0x51dbf3168abf5e275a662af5c4...897d",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackcolor
                                              .withOpacity(0.8)),
                                    ),
                                  ),
                                  SvgPicture.asset(Res.copy)
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Divider(
                                  color: AppColors.darktextcolor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "To",
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.6)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Wallet Name",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackcolor
                                              .withOpacity(0.8)),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Divider(
                                  color: AppColors.darktextcolor,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Thank you for using",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darktextcolor
                                              .withOpacity(0.5)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "PayApp",
                                      style: fontW4S12(context)!.copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.appcolor),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              CommonButtonWidget(
                                  //  buttonwidth: 100,
                                  horizontalPadding: 7,
                                  radius: 27,
                                  buttonHeight: 50,
                                  backgroundcolor: AppColors.appcolor,
                                  bordercolor: AppColors.appcolor,
                                  textcolor: AppColors.whitecolor,
                                  text: TextUtils.done,
                                  onTap: () {
                                    Navigator.maybePop(context);
                                    // toNext(context: context, widget: const WeFoundItScreen());
                                  }),
                            ],
                          ),
                        ),
                      ),
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
