import 'package:flutter/material.dart';
import 'package:pay_app/src/utils/appcolors.dart';

import '../themes.dart';


dp({msg, arg}) => debugPrint("\n $msg =$arg \n ");
pe({msg, arg}) => debugPrint("\n $msg =$arg \n ");

showSnackBarMessage({required BuildContext context, required String content,Color backgroundcolor=AppColors.whitecolor,Color contentColor=AppColors.blackcolor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      backgroundColor: backgroundcolor,
      content: Text(
        content,
        style: fontW4S12(context)!.copyWith(color: contentColor),
        overflow: TextOverflow.visible,
      )));
}
