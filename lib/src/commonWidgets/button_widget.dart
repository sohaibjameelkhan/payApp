import 'package:flutter/material.dart';
import 'package:pay_app/src/utils/themes.dart';

import '../utils/appcolors.dart';

class CommonButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color textcolor;
  final Color bordercolor;
  final Color backgroundcolor;
  final double radius;
  final double buttonHeight;
  final double textfont;
  final double horizontalPadding;
  final double? buttonwidth;

  CommonButtonWidget(
      {required this.text,
      required this.onTap,
      this.textcolor = Colors.white,
      this.bordercolor = AppColors.appcolor,
      this.backgroundcolor = AppColors.appcolor,
      this.radius = 9,
      this.buttonHeight = 55,
      this.buttonwidth,
      this.textfont = 17,
      this.horizontalPadding = 50,
      TextStyle? style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Container(
          height: buttonHeight,
          width: buttonwidth,
          decoration: BoxDecoration(
            color: backgroundcolor,
            border: Border.all(width: 1.5, color: bordercolor),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Center(
            child: Text(
              text,
              style:
                  fontW5S12(context)!.copyWith(fontSize: 16, color: textcolor),
            ),
          ),
        ),
      ),
    );
  }
}
