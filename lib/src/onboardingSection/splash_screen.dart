import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_app/src/helperFucntions/navigator_helper.dart';
import 'package:pay_app/src/onboardingSection/terms_of_use.dart';
import 'package:pay_app/src/utils/appcolors.dart';
import 'package:pay_app/src/utils/text_Utils.dart';
import 'package:pay_app/src/utils/themes.dart';

import '../../res.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      toRemoveAll(context: context, widget: const TermsOfUseScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              TextUtils.welcometo,
              style: fontW5S12(
                context,
              )!
                  .copyWith(fontSize: 17),
            ),
          ),
          Text(
            TextUtils.payapp,
            style: fontW5S12(context)!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(
            height: 80,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                Res.splashbackgroundimage,
                height: 300,
                width: 300,
              ))
        ],
      ),
    );
  }
}
