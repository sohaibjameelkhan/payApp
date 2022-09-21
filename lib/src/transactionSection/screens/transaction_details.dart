import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/utils/commonMthods/helper_Functions.dart';

import '../../../res.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightcolor,
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                  child: SvgPicture.asset(
                    Res.arrowback,
                  ),
                ),
                Text(
                  TextUtils.details,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackcolor),
                ),
                const Text("     "),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "\$56,587,00.0",
                style: fontW4S12(context)!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackcolor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Jul 30, Saturday, 2:02 PM",
                style: fontW4S12(context)!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darktextcolor),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: AppColors.whitecolor,
                    borderRadius: BorderRadius.circular(23)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Transaction Hash",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor.withOpacity(0.6)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "0x51dbf3168abf5e275a662af5c4...897d",
                              style: fontW4S12(context)!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackcolor.withOpacity(0.8)),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                FlutterClipboard.copy(
                                        "0x51dbf3168abf5e275a662af5c4...897d")
                                    .then((value) {
                                  showSnackBarMessage(
                                      context: context,
                                      content: "Text copied to clipboard");
                                });
                              },
                              child: SvgPicture.asset(Res.copy))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Divider(
                          color: AppColors.darktextcolor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Status",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Res.simpletickpng,
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Success",
                                style: fontW4S12(context)!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Divider(
                          color: AppColors.darktextcolor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "From",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor.withOpacity(0.6)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "0x51dbf3168abf5e275a662af5c4...897d",
                              style: fontW4S12(context)!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackcolor.withOpacity(0.8)),
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
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "To",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor.withOpacity(0.6)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Wallet Name",
                              style: fontW4S12(context)!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackcolor.withOpacity(0.8)),
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
                      SizedBox(
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
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      AppColors.darktextcolor.withOpacity(0.5)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "PayApp",
                              style: fontW4S12(context)!.copyWith(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.appcolor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
