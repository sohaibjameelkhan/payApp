import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../dashboardSection/screens/dashboarsScreen.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class walletAddedSucessfully extends StatelessWidget {
  const walletAddedSucessfully({Key? key}) : super(key: key);

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
                buttonHeight: 50,
                radius: 27,
                text: TextUtils.done,
                onTap: () {
                  toNext(context: context, widget: DashBoardScreen());
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        backgroundColor: AppColors.whitecolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  Res.walletadded,
                  height: 120,
                  width: 120,
                )),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                TextUtils.walletSucessfully,
                style: fontW4S12(context)!.copyWith(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackcolor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                TextUtils.added,
                style: fontW4S12(context)!.copyWith(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackcolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
