import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_app/src/addMerchantWalletSection/screens/we_found_it.dart';
import 'package:pay_app/src/commonWidgets/textfield_widget.dart';
import 'package:pay_app/src/utils/text_utils.dart';
import 'package:pay_app/src/utils/themes.dart';
import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';

class AnotherMethodScreen extends StatefulWidget {
  const AnotherMethodScreen({Key? key}) : super(key: key);

  @override
  State<AnotherMethodScreen> createState() => _AnotherMethodScreenState();
}

class _AnotherMethodScreenState extends State<AnotherMethodScreen> {
  TextEditingController walletaddressController = TextEditingController();
  bool btnEnabled = false;
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
                textcolor: btnEnabled == true
                    ? AppColors.whitecolor
                    : AppColors.blackcolor,
                bordercolor: btnEnabled == true
                    ? AppColors.appcolor
                    : AppColors.whiteskincolor,
                backgroundcolor: btnEnabled == true
                    ? AppColors.appcolor
                    : AppColors.whiteskincolor,
                text: TextUtils.continuebutton,
                onTap: () {
                  if (btnEnabled == true) {
                    toNext(context: context, widget: const WeFoundItScreen());
                    return;
                  } else {
                    return;
                  }
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        backgroundColor: AppColors.whitecolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
                height: 155,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  TextUtils.pasteyourwallet,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackcolor),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  TextUtils.addresshere,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackcolor),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.walletAddress,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darktextcolor),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              TextFieldWidget(
                  textFieldHeight: 50,
                  maxlines: 1,
                  onChanged: (val) {
                    if (val.isNotEmpty) {
                      setState(() {
                        btnEnabled = true;
                      });
                    } else {
                      setState(() {
                        btnEnabled = false;
                      });
                    }
                  },

                  // validator: (val) {
                  //   if (val!.length > 3) {
                  //     setState(() {
                  //       btnEnabled = true;
                  //     });
                  //   } else {
                  //     setState(() {
                  //       btnEnabled = false;
                  //     });
                  //   }
                  // },
                  controller: walletaddressController,
                  hintText: "Paste or enter your wallet adress here",
                  textInputType: TextInputType.text),
            ],
          ),
        ),
      ),
    );
  }
}
