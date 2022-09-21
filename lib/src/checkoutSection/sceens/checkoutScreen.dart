import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/checkoutSection/sceens/qrCode.dart';
import '../../../res.dart';
import '../../addMerchantWalletSection/screens/we_found_it.dart';
import '../../commonWidgets/button_widget.dart';
import '../../commonWidgets/textfield_widget.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonButtonWidget(
                //  buttonwidth: 100,
                horizontalPadding: 12,
                radius: 27,
                text: TextUtils.checkout,
                onTap: () {
                  
                   toNext(context: context, widget: const QrCodeScreen());
                }),
            const SizedBox(
              height: 40,
            )
          ],
        ),
        backgroundColor: AppColors.whitecolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
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
                    TextUtils.checkout,
                    style: fontW4S12(context)!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackcolor),
                  ),
                  const Text("     "),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.walletToRecieve,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackcolor.withOpacity(0.6)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: AppColors.lightcolor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: AppColors.whitecolor,
                        child: Icon(
                          Icons.person,
                          color: AppColors.whiteskincolor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        TextUtils.nameofwallet,
                        style: fontW4S12(context)!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackcolor),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.enterAmount,
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
                  hintText: "Enter Amount",
                  textInputType: TextInputType.number),
            ],
          ),
        ),
      ),
    );
  }
}
