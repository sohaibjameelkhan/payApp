import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../commonWidgets/textfield_widget.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';
import 'added_sucessfully.dart';

class WeFoundItScreen extends StatelessWidget {
  const WeFoundItScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitecolor,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 30,
                radius: 27,
                text: TextUtils.continuebutton,
                onTap: () {
                  toNext(
                      context: context, widget: const walletAddedSucessfully());
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 7,
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
                    TextUtils.walletAddress,
                    style: fontW4S12(context)!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackcolor),
                  ),
                  const Text("     "),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  TextUtils.weFoundit,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackcolor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                    color: AppColors.whiteskincolor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        Res.nameofwalletpng,
                        height: 55,
                        width: 55,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TextUtils.nameofwallet,
                            style: fontW4S12(context)!.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackcolor.withOpacity(0.8)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "\$56,527.90",
                            style: fontW4S12(context)!.copyWith(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackcolor.withOpacity(0.8)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                TextUtils.nameofyourwallet,
                style: fontW4S12(context)!.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackcolor),
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.walletName,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darktextcolor),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const TextFieldWidget(
                  textFieldHeight: 50,
                  maxlines: 1,
                  hintText: "Wallet Name",
                  textInputType: TextInputType.text),
              const SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.merchantName,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darktextcolor),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const TextFieldWidget(
                  textFieldHeight: 50,
                  maxlines: 1,
                  hintText: "Enter your merchant name",
                  textInputType: TextInputType.text),
            ],
          ),
        ),
      ),
    );
  }
}
