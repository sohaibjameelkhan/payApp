import 'package:flutter/material.dart';
import 'package:pay_app/src/commonWidgets/button_widget.dart';
import 'package:pay_app/src/dashboardSection/screens/dashboarsScreen.dart';
import 'package:pay_app/src/helperFucntions/navigator_helper.dart';
import 'package:pay_app/src/onboardingSection/type_of_wallet.dart';
import 'package:pay_app/src/utils/appcolors.dart';
import 'package:pay_app/src/utils/text_utils.dart';

import '../utils/themes.dart';

class TermsOfUseScreen extends StatefulWidget {
  const TermsOfUseScreen({Key? key}) : super(key: key);

  @override
  State<TermsOfUseScreen> createState() => _TermsOfUseScreenState();
}

class _TermsOfUseScreenState extends State<TermsOfUseScreen> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: AppColors.backgroundColorscreen,
        backgroundColor: AppColors.whitecolor.withOpacity(0.9),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  color: AppColors.whitecolor.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Colors.white.withOpacity(.32);
                            }
                            return Colors.green;
                          }),
                          activeColor: AppColors.whitecolor,
                          checkColor: Colors.white,
                          hoverColor: AppColors.blackcolor,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          TextUtils.termsofuse,
                          style: fontW5S12(context)!.copyWith(
                              fontSize: 16, color: AppColors.darktextcolor),
                        ),
                      ],
                    ),
                  ),
                  CommonButtonWidget(
                      //  buttonwidth: 100,
                      horizontalPadding: 30,
                      radius: 27,
                      text: "Next",
                      onTap: () {
                        toNext(context: context, widget: DashBoardScreen());
                      })
                ],
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    TextUtils.termsofusetitle,
                    style: fontW5S12(context)!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackcolor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      style: fontW3S12(context)!.copyWith(
                          fontSize: 26,
                          color: AppColors.darktextcolor,
                          fontWeight: FontWeight.w300),
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel sed dolor at condimentum auctor. Augue risus lectus metus id arcu faucibus. Interdum eleifend tempor sagittis adipiscing. Consequat pharetra, amet in aliquet amet at arcu. Pretium risus fusce feugiat aliquam ullamcorper ac proin purus aliquam. Pulvinar ac iaculis in quis ac lacinia hac leo ipsum. Eu lacus gravida eu, a. Odio urna, nunc, ut amet, in sapien.Pellentesque rhoncus donec elementum, a in. Lacus, ullamcorper libero neque vivamus. Quis sit vitae, arcu morbi. Vitae fringilla neque amet aliquet vitae turpis pellentesque elementum. Vitae risus eu eget et diam nunc laoreet. Aliquam, curabitur lectus suspendisse eu sapien fusce. Parturient risus a ultricies varius. Erat lectus penatibus nulla euismod. Fermentum justo tempor tempus quam. Dui pellentesque nisl, id feugiat amet praesent faucibus molestie. Metus dolor, pharetra sit viverra massa metus justo. Fermentum rhoncus cras gravida a eget ullamcorper dui. Amet facilisis euismod nam."),
                  textScaleFactor: 0.7,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
