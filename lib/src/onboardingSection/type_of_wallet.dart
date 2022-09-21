import 'package:flutter/material.dart';
import 'package:pay_app/src/addMerchantWalletSection/screens/scan_qr.dart';
import '../addMerchantWalletSection/screens/another_method.dart';
import '../commonWidgets/button_widget.dart';
import '../helperFucntions/navigator_helper.dart';
import '../utils/appcolors.dart';
import '../utils/text_Utils.dart';
import '../utils/themes.dart';

class TypeOfWalletScreen extends StatefulWidget {
  const TypeOfWalletScreen({Key? key}) : super(key: key);

  @override
  State<TypeOfWalletScreen> createState() => _TypeOfWalletScreenState();
}

class _TypeOfWalletScreenState extends State<TypeOfWalletScreen> {
  bool personalWallet = false;
  bool merchanntWallet = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: AppColors.backgroundColorscreen,
        backgroundColor: AppColors.whitecolor.withOpacity(0.9),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                TextUtils.addwallet,
                style: fontW5S12(context)!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackcolor),
              ),
            ),
            const SizedBox(
              height: 155,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                TextUtils.selectTheTypeOfWallet,
                style: fontW4S12(context)!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackcolor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                TextUtils.walletToAdd,
                style: fontW4S12(context)!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackcolor),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 12,
                radius: 27,
                textcolor: merchanntWallet
                    ? AppColors.darktextcolor
                    : AppColors.whitecolor,
                bordercolor: merchanntWallet
                    ? AppColors.whiteskincolor
                    : AppColors.appcolor,
                backgroundcolor: merchanntWallet
                    ? AppColors.whiteskincolor
                    : AppColors.appcolor,
                text: "Personal Wallet",
                onTap: () {
                  setState(() {
                    personalWallet = true;
                    merchanntWallet = false;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 12,
                radius: 27,
                bordercolor: merchanntWallet
                    ? AppColors.appcolor
                    : AppColors.whiteskincolor,
                textcolor: merchanntWallet
                    ? AppColors.whitecolor
                    : AppColors.darktextcolor,
                backgroundcolor: merchanntWallet
                    ? AppColors.appcolor
                    : AppColors.whiteskincolor,
                text: "Merchant Wallet",
                onTap: () {
                  setState(() {
                    personalWallet = false;
                    merchanntWallet = true;
                  });
                }),
            const Spacer(),
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 30,
                radius: 27,
                text: "Next",
                onTap: () {
                  toNext(context: context, widget: const ScanQRScreen());
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
